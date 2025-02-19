package main

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	"path/filepath"

	"github.com/savannahghi/sil_fhir_profile_ig/scripts/models"
)

const (
	codeSystemPath = "fhir/CodeSystem"
	valueSetPath   = "fhir/ValueSet"
)

func main() {
	ctx := context.Background()

	if err := generateResourceFile(ctx, "CodeSystem", codeSystemPath); err != nil {
		fmt.Println("Error generating CodeSystem files:", err)
	}

	if err := generateResourceFile(ctx, "ValueSet", valueSetPath); err != nil {
		fmt.Println("Error generating ValueSet files:", err)
	}
}

func generateResourceFile(ctx context.Context, resourceType, endpoint string) error {
	var resp models.Bundle

	err := makeRequest(ctx, http.MethodGet, endpoint, nil, nil, &resp)
	if err != nil {
		return err
	}

	folderPath := "input/resources/"
	if _, err := os.Stat(folderPath); os.IsNotExist(err) {
		if err := os.MkdirAll(folderPath, os.ModeDir|0755); err != nil {
			return err
		}
	}

	for _, entry := range resp.Entry {
		var resource interface{}
		switch resourceType {
		case "CodeSystem":
			resource = &models.CodeSystem{}
		case "ValueSet":
			resource = &models.ValueSet{}
		default:
			return fmt.Errorf("unsupported resource type: %s", resourceType)
		}

		if err := json.Unmarshal(entry.Resource, resource); err != nil {
			return err
		}

		if res, ok := resource.(interface{ SetResourceType(string) }); ok {
			res.SetResourceType(resourceType)
		}

		var id string
		switch r := resource.(type) {
		case *models.CodeSystem:
			id = *r.Id
		case *models.ValueSet:
			id = *r.Id
		default:
			return fmt.Errorf("unsupported resource type: %s", resourceType)
		}

		fileName := fmt.Sprintf("%s.json", id)
		filePath := filepath.Join(folderPath, fileName)

		entryJSON, err := json.MarshalIndent(resource, "", "  ")
		if err != nil {
			fmt.Printf("Error marshaling JSON for %s: %v\n", resourceType, err)
			continue
		}

		if err := os.WriteFile(filePath, entryJSON, 0644); err != nil {
			fmt.Printf("Error writing file for %s: %v\n", resourceType, err)
			continue
		}
	}

	return nil
}

func newRequest(
	ctx context.Context,
	method, path string,
	params url.Values,
	data interface{},
) (*http.Request, error) {
	url, err := composeRequestURL(path, params)
	if err != nil {
		return nil, err
	}

	request, err := http.NewRequestWithContext(ctx, method, url, http.NoBody)
	if err != nil {
		return nil, err
	}

	setHeaders(request)

	switch payload := data.(type) {
	case nil:
		request.Body = nil
	case io.ReadCloser:
		request.Body = payload
	case io.Reader:
		request.Body = io.NopCloser(payload)
	default:
		b, err := json.Marshal(data)
		if err != nil {
			return nil, err
		}

		request.Body = io.NopCloser(bytes.NewReader(b))
	}

	return request, nil
}

func setHeaders(r *http.Request) {
	r.Header.Set("Content-Type", "application/json")
	r.Header.Set("Accept", "application/json")
	r.Header.Set("Authorization", "Bearer "+os.Getenv("OCL_TOKEN"))
}

func composeRequestURL(path string, params url.Values) (string, error) {
	u, err := url.Parse(os.Getenv("OCL_BASE_URL") + "/" + path)
	if err != nil {
		return "", errors.New("url parse: " + err.Error())
	}

	u.RawQuery = params.Encode()

	return u.String(), nil
}

func makeRequest(
	ctx context.Context,
	method, path string,
	params url.Values,
	data, result interface{},
) error {
	request, err := newRequest(ctx, method, path, params, data)
	if err != nil {
		return err
	}

	httpclient := &http.Client{}
	resp, err := httpclient.Do(request)
	if err != nil {
		return err
	}

	defer resp.Body.Close()

	if resp.StatusCode < 200 || resp.StatusCode >= 300 {
		body, err := io.ReadAll(resp.Body)
		if err != nil {
			return err
		}

		return fmt.Errorf("failed (HTTP %d): %s", resp.StatusCode, string(body))
	}

	if result != nil {
		if err = readResponse(resp, result); err != nil {
			return err
		}
	}

	return nil
}

func readResponse(response *http.Response, result interface{}) error {
	if response.Body == nil {
		return errors.New("response body is nil")
	}
	defer response.Body.Close()

	respBytes, err := io.ReadAll(response.Body)
	if err != nil {
		return err
	}

	err = json.Unmarshal(respBytes, result)
	if err != nil {
		return fmt.Errorf("failed to unmarshall body: %w", err)
	}

	return nil
}
