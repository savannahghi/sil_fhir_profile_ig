package models

import (
	"encoding/json"
	"time"
)

// ValueSet is documented here http://hl7.org/fhir/StructureDefinition/ValueSet
type ValueSet struct {
	Id           *string            `bson:"id,omitempty" json:"id,omitempty"`
	Meta         *Meta              `bson:"meta,omitempty" json:"meta,omitempty"`
	Url          *string            `bson:"url,omitempty" json:"url,omitempty"`
	Identifier   []Identifier       `bson:"identifier,omitempty" json:"identifier,omitempty"`
	Version      *string            `bson:"version,omitempty" json:"version,omitempty"`
	Name         *string            `bson:"name,omitempty" json:"name,omitempty"`
	Title        *string            `bson:"title,omitempty" json:"title,omitempty"`
	Status       PublicationStatus  `bson:"status" json:"status"`
	Date         *string            `bson:"date,omitempty" json:"date,omitempty"`
	Publisher    *string            `bson:"publisher,omitempty" json:"publisher,omitempty"`
	Description  *string            `bson:"description,omitempty" json:"description,omitempty"`
	UseContext   []UsageContext     `bson:"useContext,omitempty" json:"useContext,omitempty"`
	Jurisdiction []CodeableConcept  `bson:"jurisdiction,omitempty" json:"jurisdiction,omitempty"`
	Immutable    *bool              `bson:"immutable,omitempty" json:"immutable,omitempty"`
	Purpose      *string            `bson:"purpose,omitempty" json:"purpose,omitempty"`
	Copyright    *string            `bson:"copyright,omitempty" json:"copyright,omitempty"`
	Compose      *ValueSetCompose   `bson:"compose,omitempty" json:"compose,omitempty"`
	Expansion    *ValueSetExpansion `bson:"expansion,omitempty" json:"expansion,omitempty"`
}

type ValueSetCompose struct {
	Include []ValueSetComposeInclude `bson:"include" json:"include"`
	Exclude []ValueSetComposeInclude `bson:"exclude,omitempty" json:"exclude,omitempty"`
}

type ValueSetComposeInclude struct {
	System   *string                         `bson:"system,omitempty" json:"system,omitempty"`
	Version  *string                         `bson:"version,omitempty" json:"version,omitempty"`
	Concept  []ValueSetComposeIncludeConcept `bson:"concept,omitempty" json:"concept,omitempty"`
	Filter   []ValueSetComposeIncludeFilter  `bson:"filter,omitempty" json:"filter,omitempty"`
	ValueSet []string                        `bson:"valueSet,omitempty" json:"valueSet,omitempty"`
}

type ValueSetComposeIncludeConcept struct {
	Code        string                                     `bson:"code" json:"code"`
	Display     *string                                    `bson:"display,omitempty" json:"display,omitempty"`
	Designation []ValueSetComposeIncludeConceptDesignation `bson:"designation,omitempty" json:"designation,omitempty"`
}

type ValueSetComposeIncludeConceptDesignation struct {
	Language *string `bson:"language,omitempty" json:"language,omitempty"`
	Use      *Coding `bson:"use,omitempty" json:"use,omitempty"`
	Value    string  `bson:"value" json:"value"`
}

type ValueSetComposeIncludeFilter struct {
	Property string         `bson:"property" json:"property"`
	Op       FilterOperator `bson:"op" json:"op"`
	Value    string         `bson:"value" json:"value"`
}

type ValueSetExpansion struct {
	Identifier *string                      `bson:"identifier,omitempty" json:"identifier,omitempty"`
	Timestamp  string                       `bson:"timestamp" json:"timestamp"`
	Total      *int                         `bson:"total,omitempty" json:"total,omitempty"`
	Offset     *int                         `bson:"offset,omitempty" json:"offset,omitempty"`
	Parameter  []ValueSetExpansionParameter `bson:"parameter,omitempty" json:"parameter,omitempty"`
	Contains   []ValueSetExpansionContains  `bson:"contains,omitempty" json:"contains,omitempty"`
}

type ValueSetExpansionParameter struct {
	Name          string       `bson:"name" json:"name"`
	ValueString   *string      `bson:"valueString,omitempty" json:"valueString,omitempty"`
	ValueBoolean  *bool        `bson:"valueBoolean,omitempty" json:"valueBoolean,omitempty"`
	ValueInteger  *int         `bson:"valueInteger,omitempty" json:"valueInteger,omitempty"`
	ValueDecimal  *json.Number `bson:"valueDecimal,omitempty" json:"valueDecimal,omitempty"`
	ValueUri      *string      `bson:"valueUri,omitempty" json:"valueUri,omitempty"`
	ValueCode     *string      `bson:"valueCode,omitempty" json:"valueCode,omitempty"`
	ValueDateTime *string      `bson:"valueDateTime,omitempty" json:"valueDateTime,omitempty"`
}

type ValueSetExpansionContains struct {
	System      *string                                    `bson:"system,omitempty" json:"system,omitempty"`
	Abstract    *bool                                      `bson:"abstract,omitempty" json:"abstract,omitempty"`
	Inactive    *bool                                      `bson:"inactive,omitempty" json:"inactive,omitempty"`
	Version     *string                                    `bson:"version,omitempty" json:"version,omitempty"`
	Code        *string                                    `bson:"code,omitempty" json:"code,omitempty"`
	Display     *string                                    `bson:"display,omitempty" json:"display,omitempty"`
	Designation []ValueSetComposeIncludeConceptDesignation `bson:"designation,omitempty" json:"designation,omitempty"`
	Contains    []ValueSetExpansionContains                `bson:"contains,omitempty" json:"contains,omitempty"`
}

type OtherValueSet ValueSet

// MarshalJSON marshals the given ValueSet as JSON into a byte slice
func (r ValueSet) MarshalJSON() ([]byte, error) {
	return json.Marshal(struct {
		OtherValueSet
		ResourceType string `json:"resourceType"`
	}{
		OtherValueSet: OtherValueSet(r),
		ResourceType:  "ValueSet",
	})
}

// UnmarshalValueSet unmarshals a ValueSet.
func UnmarshalValueSet(b []byte) (ValueSet, error) {
	var valueSet ValueSet
	if err := json.Unmarshal(b, &valueSet); err != nil {
		return valueSet, err
	}
	return valueSet, nil
}

type Meta struct {
	VersionID   string    `json:"versionId,omitempty"`
	LastUpdated time.Time `json:"lastUpdated,omitempty"`
	Source      string    `json:"source,omitempty"`
	Tag         []Coding  `json:"tag,omitempty"`
	Security    []Coding  `json:"security,omitempty"`
}

type Extension struct {
	Id                *string      `bson:"id,omitempty" json:"id,omitempty"`
	Extension         []Extension  `bson:"extension,omitempty" json:"extension,omitempty"`
	Url               string       `bson:"url" json:"url"`
	ValueBase64Binary *string      `bson:"valueBase64Binary,omitempty" json:"valueBase64Binary,omitempty"`
	ValueBoolean      *bool        `bson:"valueBoolean,omitempty" json:"valueBoolean,omitempty"`
	ValueCanonical    *string      `bson:"valueCanonical,omitempty" json:"valueCanonical,omitempty"`
	ValueCode         *string      `bson:"valueCode,omitempty" json:"valueCode,omitempty"`
	ValueDate         *string      `bson:"valueDate,omitempty" json:"valueDate,omitempty"`
	ValueDateTime     *string      `bson:"valueDateTime,omitempty" json:"valueDateTime,omitempty"`
	ValueDecimal      *json.Number `bson:"valueDecimal,omitempty" json:"valueDecimal,omitempty"`
	ValueId           *string      `bson:"valueId,omitempty" json:"valueId,omitempty"`
	ValueInstant      *string      `bson:"valueInstant,omitempty" json:"valueInstant,omitempty"`
	ValueInteger      *int         `bson:"valueInteger,omitempty" json:"valueInteger,omitempty"`
	ValueMarkdown     *string      `bson:"valueMarkdown,omitempty" json:"valueMarkdown,omitempty"`
	ValueOid          *string      `bson:"valueOid,omitempty" json:"valueOid,omitempty"`
	ValuePositiveInt  *int         `bson:"valuePositiveInt,omitempty" json:"valuePositiveInt,omitempty"`
	ValueString       *string      `bson:"valueString,omitempty" json:"valueString,omitempty"`
	ValueTime         *string      `bson:"valueTime,omitempty" json:"valueTime,omitempty"`
	ValueUnsignedInt  *int         `bson:"valueUnsignedInt,omitempty" json:"valueUnsignedInt,omitempty"`
	ValueUri          *string      `bson:"valueUri,omitempty" json:"valueUri,omitempty"`
	ValueUrl          *string      `bson:"valueUrl,omitempty" json:"valueUrl,omitempty"`
	ValueUuid         *string      `bson:"valueUuid,omitempty" json:"valueUuid,omitempty"`
	ValueMeta         *Meta        `bson:"valueMeta,omitempty" json:"valueMeta,omitempty"`
}

type Identifier struct {
	ID       *string           `json:"id,omitempty"`
	Use      IdentifierUseEnum `json:"use,omitempty"`
	Type     CodeableConcept   `json:"type,omitempty"`
	System   *string           `json:"system,omitempty"`
	Value    string            `json:"value,omitempty"`
	Period   *Period           `json:"period,omitempty"`
	Assigner *FHIRReference    `json:"assigner,omitempty"`
}

type CodeableConcept struct {
	ID     *string   `json:"id,omitempty"`
	Coding []*Coding `json:"coding,omitempty"`
	Text   string    `json:"text,omitempty"`
}

type Coding struct {
	ID           *string `json:"id,omitempty"`
	System       *string `json:"system,omitempty"`
	Version      *string `json:"version,omitempty"`
	Code         *string `json:"code,omitempty"`
	Display      string  `json:"display,omitempty"`
	UserSelected *bool   `json:"userSelected,omitempty"`
}

type Period struct {
	ID    *string `json:"id,omitempty"`
	Start *string `json:"start,omitempty"`
	End   *string `json:"end,omitempty"`
}

type FHIRReference struct {
	ID         *string     `json:"id,omitempty"`
	Reference  *string     `json:"reference,omitempty"`
	Type       *string     `json:"type,omitempty"`
	Identifier *Identifier `json:"identifier,omitempty"`
	Display    string      `json:"display,omitempty"`
}

type IdentifierUseEnum string

const (
	// IdentifierUseEnumUsual ...
	IdentifierUseEnumUsual IdentifierUseEnum = "usual"
	// IdentifierUseEnumOfficial ...
	IdentifierUseEnumOfficial IdentifierUseEnum = "official"
	// IdentifierUseEnumTemp ...
	IdentifierUseEnumTemp IdentifierUseEnum = "temp"
	// IdentifierUseEnumSecondary ...
	IdentifierUseEnumSecondary IdentifierUseEnum = "secondary"
	// IdentifierUseEnumOld ...
	IdentifierUseEnumOld IdentifierUseEnum = "old"
)

type PublicationStatus string

const (
	PublicationStatusDraft   PublicationStatus = "draft"
	PublicationStatusActive  PublicationStatus = "active"
	PublicationStatusRetired PublicationStatus = "retired"
	PublicationStatusUnknown PublicationStatus = "unknown"
)

type UsageContext struct {
	Extension            []Extension     `bson:"extension,omitempty" json:"extension,omitempty"`
	Code                 Coding          `bson:"code" json:"code"`
	ValueCodeableConcept CodeableConcept `bson:"valueCodeableConcept" json:"valueCodeableConcept"`
}

type FilterOperator string

const (
	FilterOperatorEquals       FilterOperator = "="
	FilterOperatorIsA          FilterOperator = "is-a"
	FilterOperatorDescendentOf FilterOperator = "descendent-of"
	FilterOperatorIsNotA       FilterOperator = "is-not-a"
	FilterOperatorRegex        FilterOperator = "regex"
	FilterOperatorIn           FilterOperator = "in"
	FilterOperatorNotIn        FilterOperator = "not-in"
	FilterOperatorGeneralizes  FilterOperator = "generalizes"
	FilterOperatorExists       FilterOperator = "exists"
)
