package models

import (
	"encoding/json"
	"fmt"
	"strings"
)

type Bundle struct {
	Id            *string       `bson:"id,omitempty" json:"id,omitempty"`
	Meta          *Meta         `bson:"meta,omitempty" json:"meta,omitempty"`
	ImplicitRules *string       `bson:"implicitRules,omitempty" json:"implicitRules,omitempty"`
	Language      *string       `bson:"language,omitempty" json:"language,omitempty"`
	Identifier    *Identifier   `bson:"identifier,omitempty" json:"identifier,omitempty"`
	Type          BundleType    `bson:"type" json:"type"`
	Timestamp     *string       `bson:"timestamp,omitempty" json:"timestamp,omitempty"`
	Total         *int          `bson:"total,omitempty" json:"total,omitempty"`
	Link          []BundleLink  `bson:"link,omitempty" json:"link,omitempty"`
	Entry         []BundleEntry `bson:"entry,omitempty" json:"entry,omitempty"`
}

type BundleLink struct {
	Id                *string     `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Relation          string      `bson:"relation" json:"relation"`
	Url               string      `bson:"url" json:"url"`
}

type BundleEntry struct {
	Id                *string              `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension          `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension          `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Link              []BundleLink         `bson:"link,omitempty" json:"link,omitempty"`
	FullUrl           *string              `bson:"fullUrl,omitempty" json:"fullUrl,omitempty"`
	Resource          json.RawMessage      `bson:"resource,omitempty" json:"resource,omitempty"`
	Search            *BundleEntrySearch   `bson:"search,omitempty" json:"search,omitempty"`
	Request           *BundleEntryRequest  `bson:"request,omitempty" json:"request,omitempty"`
	Response          *BundleEntryResponse `bson:"response,omitempty" json:"response,omitempty"`
}

type BundleEntrySearch struct {
	Id                *string          `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension      `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension      `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Mode              *SearchEntryMode `bson:"mode,omitempty" json:"mode,omitempty"`
	Score             *json.Number     `bson:"score,omitempty" json:"score,omitempty"`
}

type BundleEntryRequest struct {
	Id                *string     `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Method            string      `bson:"method" json:"method"`
	Url               string      `bson:"url" json:"url"`
	IfNoneMatch       *string     `bson:"ifNoneMatch,omitempty" json:"ifNoneMatch,omitempty"`
	IfModifiedSince   *string     `bson:"ifModifiedSince,omitempty" json:"ifModifiedSince,omitempty"`
	IfMatch           *string     `bson:"ifMatch,omitempty" json:"ifMatch,omitempty"`
	IfNoneExist       *string     `bson:"ifNoneExist,omitempty" json:"ifNoneExist,omitempty"`
}

type BundleEntryResponse struct {
	Id                *string         `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension     `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension     `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Status            string          `bson:"status" json:"status"`
	Location          *string         `bson:"location,omitempty" json:"location,omitempty"`
	Etag              *string         `bson:"etag,omitempty" json:"etag,omitempty"`
	LastModified      *string         `bson:"lastModified,omitempty" json:"lastModified,omitempty"`
	Outcome           json.RawMessage `bson:"outcome,omitempty" json:"outcome,omitempty"`
}

type BundleType int

const (
	BundleTypeDocument BundleType = iota
	BundleTypeMessage
	BundleTypeTransaction
	BundleTypeTransactionResponse
	BundleTypeBatch
	BundleTypeBatchResponse
	BundleTypeHistory
	BundleTypeSearchset
	BundleTypeCollection
)

func (code BundleType) MarshalJSON() ([]byte, error) {
	return json.Marshal(code.Code())
}

func (code *BundleType) UnmarshalJSON(json []byte) error {
	s := strings.Trim(string(json), "\"")
	switch s {
	case "document":
		*code = BundleTypeDocument
	case "message":
		*code = BundleTypeMessage
	case "transaction":
		*code = BundleTypeTransaction
	case "transaction-response":
		*code = BundleTypeTransactionResponse
	case "batch":
		*code = BundleTypeBatch
	case "batch-response":
		*code = BundleTypeBatchResponse
	case "history":
		*code = BundleTypeHistory
	case "searchset":
		*code = BundleTypeSearchset
	case "collection":
		*code = BundleTypeCollection
	default:
		return fmt.Errorf("unknown BundleType code `%s`", s)
	}
	return nil
}

func (code BundleType) String() string {
	return code.Code()
}

func (code BundleType) Code() string {
	switch code {
	case BundleTypeDocument:
		return "document"
	case BundleTypeMessage:
		return "message"
	case BundleTypeTransaction:
		return "transaction"
	case BundleTypeTransactionResponse:
		return "transaction-response"
	case BundleTypeBatch:
		return "batch"
	case BundleTypeBatchResponse:
		return "batch-response"
	case BundleTypeHistory:
		return "history"
	case BundleTypeSearchset:
		return "searchset"
	case BundleTypeCollection:
		return "collection"
	}
	return "<unknown>"
}

// SearchEntryMode is documented here http://hl7.org/fhir/ValueSet/search-entry-mode
type SearchEntryMode int

const (
	SearchEntryModeMatch SearchEntryMode = iota
	SearchEntryModeInclude
	SearchEntryModeOutcome
)

func (code SearchEntryMode) MarshalJSON() ([]byte, error) {
	return json.Marshal(code.Code())
}
func (code *SearchEntryMode) UnmarshalJSON(json []byte) error {
	s := strings.Trim(string(json), "\"")
	switch s {
	case "match":
		*code = SearchEntryModeMatch
	case "include":
		*code = SearchEntryModeInclude
	case "outcome":
		*code = SearchEntryModeOutcome
	default:
		return fmt.Errorf("unknown SearchEntryMode code `%s`", s)
	}
	return nil
}
func (code SearchEntryMode) String() string {
	return code.Code()
}
func (code SearchEntryMode) Code() string {
	switch code {
	case SearchEntryModeMatch:
		return "match"
	case SearchEntryModeInclude:
		return "include"
	case SearchEntryModeOutcome:
		return "outcome"
	}
	return "<unknown>"
}
