package models

import (
	"encoding/json"
	"fmt"
	"strings"
)

// CodeSystem is documented here http://hl7.org/fhir/StructureDefinition/CodeSystem
type CodeSystem struct {
	ResourceType      string               `json:"resourceType"`
	Id                *string              `bson:"id,omitempty" json:"id,omitempty"`
	Meta              *Meta                `bson:"meta,omitempty" json:"meta,omitempty"`
	ImplicitRules     *string              `bson:"implicitRules,omitempty" json:"implicitRules,omitempty"`
	Language          *string              `bson:"language,omitempty" json:"language,omitempty"`
	Extension         []Extension          `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension          `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Url               *string              `bson:"url,omitempty" json:"url,omitempty"`
	Identifier        []Identifier         `bson:"identifier,omitempty" json:"identifier,omitempty"`
	Version           *string              `bson:"version,omitempty" json:"version,omitempty"`
	Name              *string              `bson:"name,omitempty" json:"name,omitempty"`
	Title             *string              `bson:"title,omitempty" json:"title,omitempty"`
	Status            PublicationStatus    `bson:"status" json:"status"`
	Experimental      *bool                `bson:"experimental,omitempty" json:"experimental,omitempty"`
	Date              *string              `bson:"date,omitempty" json:"date,omitempty"`
	Publisher         *string              `bson:"publisher,omitempty" json:"publisher,omitempty"`
	Description       *string              `bson:"description,omitempty" json:"description,omitempty"`
	UseContext        []UsageContext       `bson:"useContext,omitempty" json:"useContext,omitempty"`
	Jurisdiction      []CodeableConcept    `bson:"jurisdiction,omitempty" json:"jurisdiction,omitempty"`
	Purpose           *string              `bson:"purpose,omitempty" json:"purpose,omitempty"`
	Copyright         *string              `bson:"copyright,omitempty" json:"copyright,omitempty"`
	CaseSensitive     *bool                `bson:"caseSensitive,omitempty" json:"caseSensitive,omitempty"`
	ValueSet          *string              `bson:"valueSet,omitempty" json:"valueSet,omitempty"`
	Compositional     *bool                `bson:"compositional,omitempty" json:"compositional,omitempty"`
	VersionNeeded     *bool                `bson:"versionNeeded,omitempty" json:"versionNeeded,omitempty"`
	Count             *int                 `bson:"count,omitempty" json:"count,omitempty"`
	Filter            []CodeSystemFilter   `bson:"filter,omitempty" json:"filter,omitempty"`
	Property          []CodeSystemProperty `bson:"property,omitempty" json:"property,omitempty"`
	Concept           []CodeSystemConcept  `bson:"concept,omitempty" json:"concept,omitempty"`
}

type CodeSystemFilter struct {
	Id                *string          `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension      `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension      `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Code              string           `bson:"code" json:"code"`
	Description       *string          `bson:"description,omitempty" json:"description,omitempty"`
	Operator          []FilterOperator `bson:"operator" json:"operator"`
	Value             string           `bson:"value" json:"value"`
}

type CodeSystemProperty struct {
	Id                *string      `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension  `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension  `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Code              string       `bson:"code" json:"code"`
	Uri               *string      `bson:"uri,omitempty" json:"uri,omitempty"`
	Description       *string      `bson:"description,omitempty" json:"description,omitempty"`
	Type              PropertyType `bson:"type" json:"type"`
}

type CodeSystemConcept struct {
	Id                *string                        `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension                    `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension                    `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Code              string                         `bson:"code" json:"code"`
	Display           *string                        `bson:"display,omitempty" json:"display,omitempty"`
	Definition        *string                        `bson:"definition,omitempty" json:"definition,omitempty"`
	Designation       []CodeSystemConceptDesignation `bson:"designation,omitempty" json:"designation,omitempty"`
	Property          []CodeSystemConceptProperty    `bson:"property,omitempty" json:"property,omitempty"`
	Concept           []CodeSystemConcept            `bson:"concept,omitempty" json:"concept,omitempty"`
}

type CodeSystemConceptDesignation struct {
	Id                *string     `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Language          *string     `bson:"language,omitempty" json:"language,omitempty"`
	Use               *Coding     `bson:"use,omitempty" json:"use,omitempty"`
	Value             string      `bson:"value" json:"value"`
}

type CodeSystemConceptProperty struct {
	Id                *string     `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension `bson:"extension,omitempty" json:"extension,omitempty"`
	ModifierExtension []Extension `bson:"modifierExtension,omitempty" json:"modifierExtension,omitempty"`
	Code              string      `bson:"code" json:"code"`
	ValueCode         string      `bson:"valueCode" json:"valueCode"`
	ValueCoding       Coding      `bson:"valueCoding" json:"valueCoding"`
	ValueString       string      `bson:"valueString" json:"valueString"`
	ValueInteger      int         `bson:"valueInteger" json:"valueInteger"`
	ValueBoolean      bool        `bson:"valueBoolean" json:"valueBoolean"`
	ValueDateTime     string      `bson:"valueDateTime" json:"valueDateTime"`
	ValueDecimal      json.Number `bson:"valueDecimal" json:"valueDecimal"`
}

type OtherCodeSystem CodeSystem

// MarshalJSON marshals the given CodeSystem as JSON into a byte slice
func (r CodeSystem) MarshalJSON() ([]byte, error) {
	return json.Marshal(struct {
		OtherCodeSystem
		ResourceType string `json:"resourceType"`
	}{
		OtherCodeSystem: OtherCodeSystem(r),
		ResourceType:    "CodeSystem",
	})
}

// UnmarshalCodeSystem unmarshals a CodeSystem.
func UnmarshalCodeSystem(b []byte) (CodeSystem, error) {
	var codeSystem CodeSystem
	if err := json.Unmarshal(b, &codeSystem); err != nil {
		return codeSystem, err
	}
	return codeSystem, nil
}

type PropertyType int

const (
	PropertyTypeCode PropertyType = iota
	PropertyTypeCoding
	PropertyTypeString
	PropertyTypeInteger
	PropertyTypeBoolean
	PropertyTypeDateTime
	PropertyTypeDecimal
)

func (code PropertyType) MarshalJSON() ([]byte, error) {
	return json.Marshal(code.Code())
}

func (code *PropertyType) UnmarshalJSON(json []byte) error {
	s := strings.Trim(string(json), "\"")
	switch s {
	case "code":
		*code = PropertyTypeCode
	case "Coding":
		*code = PropertyTypeCoding
	case "string":
		*code = PropertyTypeString
	case "integer":
		*code = PropertyTypeInteger
	case "boolean":
		*code = PropertyTypeBoolean
	case "dateTime":
		*code = PropertyTypeDateTime
	case "decimal":
		*code = PropertyTypeDecimal
	default:
		return fmt.Errorf("unknown PropertyType code `%s`", s)
	}
	return nil
}

func (code PropertyType) String() string {
	return code.Code()
}

func (code PropertyType) Code() string {
	switch code {
	case PropertyTypeCode:
		return "code"
	case PropertyTypeCoding:
		return "Coding"
	case PropertyTypeString:
		return "string"
	case PropertyTypeInteger:
		return "integer"
	case PropertyTypeBoolean:
		return "boolean"
	case PropertyTypeDateTime:
		return "dateTime"
	case PropertyTypeDecimal:
		return "decimal"
	}
	return "<unknown>"
}
