﻿<?xml version="1.0" encoding="utf-8"?>
<StructureDefinition xmlns="http://hl7.org/fhir">
  <id value="vkp-digital-Encounter-v05" />
  <url value="http://ehelse.no/fhir/StructureDefinition/vkp-digital-Encounter-v05" />
  <version value="0.5" />
  <name value="vkp-digital-Encounter-v05" />
  <status value="draft" />
  <date value="2018-08-29" />
  <description value="The digital (virtual) Encounter is caracterized as an encounter that uses some technological mean to perform the encounter instead of a face-to-face meeting." />
  <fhirVersion value="3.0.1" />
  <kind value="resource" />
  <abstract value="false" />
  <type value="Encounter" />
  <baseDefinition value="http://hl7.org/fhir/StructureDefinition/Encounter" />
  <derivation value="constraint" />
  <snapshot>
    <element id="Encounter">
      <path value="Encounter" />
      <short value="An digital/virtual interaction during which services are provided to the patient " />
      <definition value="The digital (virtual) Encounter is caracterized as an encounter that uses some technological mean to perform the encounter instead of a face-to-face meeting.&#xD;&#xA;&#xD;&#xA;An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient." />
      <comment value="The use-case in question is performing a virtual encounter using a camera device to perform the encounter." />
      <alias value="Visit" />
      <alias value="digitalt tilsyn" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Resource" />
        <min value="0" />
        <max value="*" />
      </base>
      <constraint>
        <key value="dom-2" />
        <severity value="error" />
        <human value="If the resource is contained in another resource, it SHALL NOT contain nested Resources" />
        <expression value="contained.contained.empty()" />
        <xpath value="not(parent::f:contained and f:contained)" />
      </constraint>
      <constraint>
        <key value="dom-1" />
        <severity value="error" />
        <human value="If the resource is contained in another resource, it SHALL NOT contain any narrative" />
        <expression value="contained.text.empty()" />
        <xpath value="not(parent::f:contained and f:text)" />
      </constraint>
      <constraint>
        <key value="dom-4" />
        <severity value="error" />
        <human value="If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated" />
        <expression value="contained.meta.versionId.empty() and contained.meta.lastUpdated.empty()" />
        <xpath value="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))" />
      </constraint>
      <constraint>
        <key value="dom-3" />
        <severity value="error" />
        <human value="If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource" />
        <expression value="contained.where(('#'+id in %resource.descendants().reference).not()).empty()" />
        <xpath value="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="Entity. Role, or Act" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="Encounter[@moodCode='EVN']" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="workflow.encounter" />
      </mapping>
    </element>
    <element id="Encounter.id">
      <path value="Encounter.id" />
      <short value="Logical id of this artifact" />
      <definition value="The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes." />
      <comment value="The only time that a resource does not have an id is when it is being submitted to the server using a create operation." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Resource.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="id" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.meta">
      <path value="Encounter.meta" />
      <short value="Metadata about the resource" />
      <definition value="The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content may not always be associated with version changes to the resource." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Resource.meta" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Meta" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.implicitRules">
      <path value="Encounter.implicitRules" />
      <short value="A set of rules under which this content was created" />
      <definition value="A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content." />
      <comment value="Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. &#xA;&#xA;This element is labelled as a modifier because the implicit rules may provide additional knowledge about the resource that modifies it's meaning or interpretation." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Resource.implicitRules" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="uri" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.language">
      <path value="Encounter.language" />
      <short value="Language of the resource content" />
      <definition value="The base language in which the resource is written." />
      <comment value="Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource  Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute)." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Resource.language" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="code" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet">
          <valueReference>
            <reference value="http://hl7.org/fhir/ValueSet/all-languages" />
          </valueReference>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Language" />
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true" />
        </extension>
        <strength value="extensible" />
        <description value="A human language." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/languages" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.text">
      <path value="Encounter.text" />
      <short value="Text summary of the resource, for human interpretation" />
      <definition value="A human-readable narrative that contains a summary of the resource, and may be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it &quot;clinically safe&quot; for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety." />
      <comment value="Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a &quot;text blob&quot; or where text is additionally entered raw or narrated and encoded in formation is added later." />
      <alias value="narrative" />
      <alias value="html" />
      <alias value="xhtml" />
      <alias value="display" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="DomainResource.text" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Narrative" />
      </type>
      <condition value="ele-1" />
      <condition value="dom-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="Act.text?" />
      </mapping>
    </element>
    <element id="Encounter.contained">
      <path value="Encounter.contained" />
      <short value="Contained, inline Resources" />
      <definition value="These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope." />
      <comment value="This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again." />
      <alias value="inline resources" />
      <alias value="anonymous resources" />
      <alias value="contained resources" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="DomainResource.contained" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Resource" />
      </type>
      <mapping>
        <identity value="rim" />
        <map value="Entity. Role, or Act" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.extension">
      <path value="Encounter.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the resource. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="DomainResource.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.modifierExtension">
      <path value="Encounter.modifierExtension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the resource, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="DomainResource.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.identifier">
      <path value="Encounter.identifier" />
      <short value="Identifier(s) by which this encounter is known" />
      <definition value="Unique code or number identifying the Encounter&#xD;&#xA;&#xD;&#xA;VKP project uses UUID. &#xD;&#xA;&#xD;&#xA;Example: urn:uuid:2e82976a-35d6-4870-a4d5-d79abf772a8f" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.identifier" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Identifier" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CX / EI (occasionally, more often EI maps to a resource id or a URL)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="II - see see identifier pattern at http://wiki.hl7.org/index.php?title=Common_Design_Patterns#Identifier_Pattern for relevant discussion. The Identifier class is a little looser than the v3 type II because it allows URIs as well as registered OIDs or GUIDs.  Also maps to Role[classCode=IDENT]" />
      </mapping>
      <mapping>
        <identity value="servd" />
        <map value="Identifier" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-19" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".id" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="id" />
      </mapping>
    </element>
    <element id="Encounter.status">
      <path value="Encounter.status" />
      <short value="planned | arrived | triaged | in-progress | onleave | finished | cancelled +" />
      <definition value="planned | arrived | triaged | in-progress | onleave | finished | cancelled +." />
      <comment value="Note that internal business rules will detemine the appropraite transitions that may occur between statuses (and also classes).&#xA;&#xA;This element is labeled as a modifier because the status contains codes that mark the encounter as not currently valid." />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.status" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="code" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterStatus" />
        </extension>
        <strength value="required" />
        <description value="Current state of the encounter" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-status" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="No clear equivalent in HL7 v2; active/finished could be inferred from PV1-44, PV1-45, PV2-24; inactive could be inferred from PV2-16" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".statusCode" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="status" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name">
        <valueString value="StatusHistory" />
      </extension>
      <path value="Encounter.statusHistory" />
      <short value="List of past encounter statuses" />
      <definition value="The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them." />
      <comment value="The current status is always found in the current version of the resource, not the status history." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.statusHistory" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory.id">
      <path value="Encounter.statusHistory.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory.extension">
      <path value="Encounter.statusHistory.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory.modifierExtension">
      <path value="Encounter.statusHistory.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory.status">
      <path value="Encounter.statusHistory.status" />
      <short value="planned | arrived | triaged | in-progress | onleave | finished | cancelled +" />
      <definition value="planned | arrived | triaged | in-progress | onleave | finished | cancelled +." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.statusHistory.status" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="code" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterStatus" />
        </extension>
        <strength value="required" />
        <description value="Current state of the encounter" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-status" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.statusHistory.period">
      <path value="Encounter.statusHistory.period" />
      <short value="The time that the episode was in the specified status" />
      <definition value="The time that the episode was in the specified status." />
      <comment value="This is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. &quot;the patient was an inpatient of the hospital for this time range&quot;) or one value from the range applies (e.g. &quot;give to the patient between these two times&quot;). If duration is required, specify the type as Interval|Duration." />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.statusHistory.period" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="Period" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="per-1" />
        <severity value="error" />
        <human value="If present, start SHALL have a lower value than end" />
        <expression value="start.empty() or end.empty() or (start &lt;= end)" />
        <xpath value="not(exists(f:start)) or not(exists(f:end)) or (f:start/@value &lt;= f:end/@value)" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="IVL&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;] or URG&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;]" />
      </mapping>
    </element>
    <element id="Encounter.class">
      <path value="Encounter.class" />
      <short value="inpatient | outpatient | ambulatory | emergency +" />
      <definition value="inpatient | outpatient | ambulatory | emergency +." />
      <comment value="Codes may be defined very casually in enumerations or code lists, up to very formal definitions such as SNOMED CT - see the HL7 v3 Core Principles for more information." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.class" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Coding" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterClass" />
        </extension>
        <strength value="extensible" />
        <description value="Classification of the encounter" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/v3-ActEncounterCode" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE subset one of the sets of component 1-3 or 4-6" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CV" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:Coding rdfs:subClassOf dt:CDCoding" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-2" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".inboundRelationship[typeCode=SUBJ].source[classCode=LIST].code" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="class" />
      </mapping>
    </element>
    <element id="Encounter.classHistory">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name">
        <valueString value="ClassHistory" />
      </extension>
      <path value="Encounter.classHistory" />
      <short value="List of past encounter classes" />
      <definition value="The class history permits the tracking of the encounters transitions without needing to go  through the resource history.&#xA;&#xA;This would be used for a case where an admission starts of as an emergency encounter, then transisions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kindof discharge from emergency to inpatient." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.classHistory" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.classHistory.id">
      <path value="Encounter.classHistory.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.classHistory.extension">
      <path value="Encounter.classHistory.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.classHistory.modifierExtension">
      <path value="Encounter.classHistory.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.classHistory.class">
      <path value="Encounter.classHistory.class" />
      <short value="inpatient | outpatient | ambulatory | emergency +" />
      <definition value="inpatient | outpatient | ambulatory | emergency +." />
      <comment value="Codes may be defined very casually in enumerations or code lists, up to very formal definitions such as SNOMED CT - see the HL7 v3 Core Principles for more information." />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.classHistory.class" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="Coding" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterClass" />
        </extension>
        <strength value="extensible" />
        <description value="Classification of the encounter" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/v3-ActEncounterCode" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE subset one of the sets of component 1-3 or 4-6" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CV" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:Coding rdfs:subClassOf dt:CDCoding" />
      </mapping>
    </element>
    <element id="Encounter.classHistory.period">
      <path value="Encounter.classHistory.period" />
      <short value="The time that the episode was in the specified class" />
      <definition value="The time that the episode was in the specified class." />
      <comment value="This is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. &quot;the patient was an inpatient of the hospital for this time range&quot;) or one value from the range applies (e.g. &quot;give to the patient between these two times&quot;). If duration is required, specify the type as Interval|Duration." />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.classHistory.period" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="Period" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="per-1" />
        <severity value="error" />
        <human value="If present, start SHALL have a lower value than end" />
        <expression value="start.empty() or end.empty() or (start &lt;= end)" />
        <xpath value="not(exists(f:start)) or not(exists(f:end)) or (f:start/@value &lt;= f:end/@value)" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="IVL&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;] or URG&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;]" />
      </mapping>
    </element>
    <element id="Encounter.type">
      <path value="Encounter.type" />
      <short value="Event type created by the camera" />
      <definition value="Specific Camera event type" />
      <comment value="Since there are many ways to further classify encounters, this element is 0..*." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.type" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterType" />
        </extension>
        <strength value="extensible" />
        <description value="The type of encounter" />
        <valueSetReference>
          <reference value="http://ehelse.no/fhir/ValueSet/vkp-encounter-camera-events-v05" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-4 / PV1-18" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".code" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="class" />
      </mapping>
    </element>
    <element id="Encounter.priority">
      <path value="Encounter.priority" />
      <short value="Indicates the urgency of the encounter" />
      <definition value="Indicates the urgency of the encounter." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.priority" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Priority" />
        </extension>
        <strength value="example" />
        <description value="Indicates the urgency of the encounter." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/v3-ActPriority" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV2-25" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".priorityCode" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="grade" />
      </mapping>
    </element>
    <element id="Encounter.subject">
      <path value="Encounter.subject" />
      <short value="The patient or group present at the encounter" />
      <definition value="Reference to the patient that is subject to the encounter, identified by Norwegian Fødselsnummer.&#xD;&#xA;&#xD;&#xA;A link to a resource representing the person or the group to whom the medication will be given.&#xD;&#xA;&#xD;&#xA;VKP always references a Patient Resource using a norwegian Fødslesnummer in a logical identifier in the subject.identifier element.&#xD;&#xA;The Name of the patient should be given in the subject.display element.&#xD;&#xA;&#xD;&#xA;Example:&#xD;&#xA;~~~~&#xD;&#xA;&quot;subject&quot;:{&#xD;&#xA;   &quot;identifier&quot;:{&#xD;&#xA;      &quot;system&quot;:&quot;urn:oid:2.16.578.1.12.4.1.4.1&quot;,&#xD;&#xA;      &quot;value&quot;:&quot;05073500186&quot;&#xD;&#xA;     },&#xD;&#xA;     &quot;display&quot;:&quot;Ærlend Sørgård&quot;&#xD;&#xA;}&#xD;&#xA;~~~~" />
      <comment value="While the encounter is always about the patient, the patient may not actually be known in all contexts of use, and there may be a group of patients that could be anonymous (such as in a group therapy for Alcoholics Anonymous - where the recording of the encounter could be used for billing on the number of people/staff and not important to the context of the specific patients) or alternately in veterinary care a herd of sheep receiving treatment (where the animals are not individually tracked)." />
      <alias value="patient" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.subject" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Patient" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Group" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://ehelse.no/fhir/StructureDefinition/vkp-Patient" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PID-3" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".participation[typeCode=SBJ]/role[classCode=PAT]" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="who.focus" />
      </mapping>
    </element>
    <element id="Encounter.subject.id">
      <path value="Encounter.subject.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.subject.extension">
      <path value="Encounter.subject.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.subject.reference">
      <path value="Encounter.subject.reference" />
      <short value="Literal reference, Relative, internal or absolute URL" />
      <definition value="A reference to a location at which the other resource is found. The reference may be a relative reference, in which case it is relative to the service base URL, or an absolute URL that resolves to the location where the resource is found. The reference may be version specific or not. If the reference is not to a FHIR RESTful server, then it should be assumed to be version specific. Internal fragment references (start with '#') refer to contained resources." />
      <comment value="Using absolute URLs provides a stable scalable approach suitable for a cloud/web context, while using relative/logical references provides a flexible approach suitable for use when trading across closed eco-system boundaries.   Absolute URLs do not need to point to a FHIR RESTful server, though this is the preferred approach. If the URL conforms to the structure &quot;/[type]/[id]&quot; then it should be assumed that the reference is to a FHIR RESTful server." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.reference" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <condition value="ref-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.subject.identifier">
      <path value="Encounter.subject.identifier" />
      <short value="Logical reference, when literal reference is not known" />
      <definition value="An identifier for the other resource. This is used when there is no way to reference the other resource directly, either because the entity is not available through a FHIR server, or because there is no way for the author of the resource to convert a known identifier to an actual location. There is no requirement that a Reference.identifier point to something that is actually exposed as a FHIR instance, but it SHALL point to a business concept that would be expected to be exposed as a FHIR instance, and that instance would need to be of a FHIR resource type allowed by the reference." />
      <comment value="When an identifier is provided in place of a reference, any system processing the reference will only be able to resolve the identifier to a reference if it understands the business context in which the identifier is used. Sometimes this is global (e.g. a national identifier) but often it is not. For this reason, none of the useful mechanisms described for working with references (e.g. chaining, includes) are possible, nor should servers be expected to be able resolve the reference. Servers may accept an identifier based reference untouched, resolve it, and/or reject it - see CapabilityStatement.rest.resource.referencePolicy. &#xA;&#xA;When both an identifier and a literal reference are provided, the literal reference is preferred. Applications processing the resource are allowed - but not required - to check that the identifier matches the literal reference&#xA;&#xA;Applications converting a logical reference to a literal reference may choose to leave the logical reference present, or remove it." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.identifier" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Identifier" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CX / EI (occasionally, more often EI maps to a resource id or a URL)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="II - see see identifier pattern at http://wiki.hl7.org/index.php?title=Common_Design_Patterns#Identifier_Pattern for relevant discussion. The Identifier class is a little looser than the v3 type II because it allows URIs as well as registered OIDs or GUIDs.  Also maps to Role[classCode=IDENT]" />
      </mapping>
      <mapping>
        <identity value="servd" />
        <map value="Identifier" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".identifier" />
      </mapping>
    </element>
    <element id="Encounter.subject.display">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true" />
      </extension>
      <path value="Encounter.subject.display" />
      <short value="Text alternative for the resource" />
      <definition value="Plain text narrative that identifies the resource in addition to the resource reference." />
      <comment value="This is generally not the same as the Resource.text of the referenced resource.  The purpose is to identify what's being referenced, not to fully describe it." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.display" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.episodeOfCare">
      <path value="Encounter.episodeOfCare" />
      <short value="Episode(s) of care that this encounter should be recorded against" />
      <definition value="Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care, and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.episodeOfCare" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/EpisodeOfCare" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-54, PV1-53" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="context" />
      </mapping>
    </element>
    <element id="Encounter.incomingReferral">
      <path value="Encounter.incomingReferral" />
      <short value="The ReferralRequest that initiated this encounter" />
      <definition value="The referral request this encounter satisfies (incoming referral)." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.incomingReferral" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/ReferralRequest" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".reason.ClinicalDocument" />
      </mapping>
    </element>
    <element id="Encounter.participant">
      <path value="Encounter.participant" />
      <short value="List of participants involved in the encounter" />
      <definition value="Refernce to the individual that participated in the encounter, usually health care provider. Identified using Norwegian Fødselsnummer&#xD;&#xA;&#xD;&#xA;Example: &#xD;&#xA;~~~~&#xD;&#xA;&quot;participant&quot;: [&#xD;&#xA;   {&#xD;&#xA;      &quot;individual&quot;:{&#xD;&#xA;         &quot;identifier&quot;:{&#xD;&#xA;            &quot;system&quot;:&quot;urn:oid:2.16.578.1.12.4.1.4.1&quot;,&#xD;&#xA;            &quot;value&quot;:&quot;04056600324&quot;&#xD;&#xA;         },&#xD;&#xA;         &quot;display&quot;:&quot;Magnar Koman&quot;&#xD;&#xA;      }&#xD;&#xA;   }&#xD;&#xA;]&#xD;&#xA;~~~~" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.participant" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="ROL" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".participation[typeCode=PFM]" />
      </mapping>
    </element>
    <element id="Encounter.participant.id">
      <path value="Encounter.participant.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.participant.extension">
      <path value="Encounter.participant.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.participant.modifierExtension">
      <path value="Encounter.participant.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.participant.type">
      <path value="Encounter.participant.type" />
      <short value="Role of participant in encounter" />
      <definition value="Role of participant in encounter." />
      <comment value="The participant type indicates how an individual partitipates in an encounter. It includes non-practitioner participants, and for practitioners this is to describe the action type in the context of this encounter (e.g. Admitting Dr, Attending Dr, Translator, Consulting Dr). This is different to the practitioner roles which are functional roles, derived from terms of employment, education, licensing, etc." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.participant.type" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="ParticipantType" />
        </extension>
        <strength value="extensible" />
        <description value="Role of participant in encounter" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-participant-type" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="ROL-3 (or maybe PRT-4)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".functionCode" />
      </mapping>
    </element>
    <element id="Encounter.participant.period">
      <path value="Encounter.participant.period" />
      <short value="Period of time during the encounter that the participant participated" />
      <definition value="The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period." />
      <comment value="This is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. &quot;the patient was an inpatient of the hospital for this time range&quot;) or one value from the range applies (e.g. &quot;give to the patient between these two times&quot;). If duration is required, specify the type as Interval|Duration." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.participant.period" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Period" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="per-1" />
        <severity value="error" />
        <human value="If present, start SHALL have a lower value than end" />
        <expression value="start.empty() or end.empty() or (start &lt;= end)" />
        <xpath value="not(exists(f:start)) or not(exists(f:end)) or (f:start/@value &lt;= f:end/@value)" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="IVL&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;] or URG&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;]" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="ROL-5, ROL-6 (or maybe PRT-5)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".time" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual">
      <path value="Encounter.participant.individual" />
      <short value="Persons involved in the encounter other than the patient" />
      <definition value="Persons involved in the encounter other than the patient." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.participant.individual" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Practitioner" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/RelatedPerson" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="ROL-4" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".role" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="who" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual.id">
      <path value="Encounter.participant.individual.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual.extension">
      <path value="Encounter.participant.individual.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual.reference">
      <path value="Encounter.participant.individual.reference" />
      <short value="Literal reference, Relative, internal or absolute URL" />
      <definition value="A reference to a location at which the other resource is found. The reference may be a relative reference, in which case it is relative to the service base URL, or an absolute URL that resolves to the location where the resource is found. The reference may be version specific or not. If the reference is not to a FHIR RESTful server, then it should be assumed to be version specific. Internal fragment references (start with '#') refer to contained resources." />
      <comment value="Using absolute URLs provides a stable scalable approach suitable for a cloud/web context, while using relative/logical references provides a flexible approach suitable for use when trading across closed eco-system boundaries.   Absolute URLs do not need to point to a FHIR RESTful server, though this is the preferred approach. If the URL conforms to the structure &quot;/[type]/[id]&quot; then it should be assumed that the reference is to a FHIR RESTful server." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.reference" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <condition value="ref-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual.identifier">
      <path value="Encounter.participant.individual.identifier" />
      <short value="Logical reference, when literal reference is not known" />
      <definition value="An identifier for the other resource. This is used when there is no way to reference the other resource directly, either because the entity is not available through a FHIR server, or because there is no way for the author of the resource to convert a known identifier to an actual location. There is no requirement that a Reference.identifier point to something that is actually exposed as a FHIR instance, but it SHALL point to a business concept that would be expected to be exposed as a FHIR instance, and that instance would need to be of a FHIR resource type allowed by the reference." />
      <comment value="When an identifier is provided in place of a reference, any system processing the reference will only be able to resolve the identifier to a reference if it understands the business context in which the identifier is used. Sometimes this is global (e.g. a national identifier) but often it is not. For this reason, none of the useful mechanisms described for working with references (e.g. chaining, includes) are possible, nor should servers be expected to be able resolve the reference. Servers may accept an identifier based reference untouched, resolve it, and/or reject it - see CapabilityStatement.rest.resource.referencePolicy. &#xA;&#xA;When both an identifier and a literal reference are provided, the literal reference is preferred. Applications processing the resource are allowed - but not required - to check that the identifier matches the literal reference&#xA;&#xA;Applications converting a logical reference to a literal reference may choose to leave the logical reference present, or remove it." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.identifier" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Identifier" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CX / EI (occasionally, more often EI maps to a resource id or a URL)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="II - see see identifier pattern at http://wiki.hl7.org/index.php?title=Common_Design_Patterns#Identifier_Pattern for relevant discussion. The Identifier class is a little looser than the v3 type II because it allows URIs as well as registered OIDs or GUIDs.  Also maps to Role[classCode=IDENT]" />
      </mapping>
      <mapping>
        <identity value="servd" />
        <map value="Identifier" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".identifier" />
      </mapping>
    </element>
    <element id="Encounter.participant.individual.display">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true" />
      </extension>
      <path value="Encounter.participant.individual.display" />
      <short value="Text alternative for the resource" />
      <definition value="Plain text narrative that identifies the resource in addition to the resource reference." />
      <comment value="This is generally not the same as the Resource.text of the referenced resource.  The purpose is to identify what's being referenced, not to fully describe it." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Reference.display" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.appointment">
      <path value="Encounter.appointment" />
      <short value="The appointment that scheduled this encounter" />
      <definition value="The appointment that scheduled this encounter." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.appointment" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Appointment" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="SCH-1 / SCH-2" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=FLFS].target[classCode=ENC, moodCode=APT]" />
      </mapping>
    </element>
    <element id="Encounter.period">
      <path value="Encounter.period" />
      <short value="The start and end time of the encounter/timestamp" />
      <definition value="Timestamp of when the encounter was finished, the system could provide both start and end times&#xD;&#xA;&#xD;&#xA;Example code: &#xD;&#xA;~~~&#xD;&#xA;&quot;period&quot;:{&#xD;&#xA;   &quot;end&quot;:&quot;2018-06-25T10:00:00.936+02:00&quot;&#xD;&#xA;}&#xD;&#xA;~~~" />
      <comment value="If not (yet) known, the end of the Period may be omitted." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.period" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Period" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="per-1" />
        <severity value="error" />
        <human value="If present, start SHALL have a lower value than end" />
        <expression value="start.empty() or end.empty() or (start &lt;= end)" />
        <xpath value="not(exists(f:start)) or not(exists(f:end)) or (f:start/@value &lt;= f:end/@value)" />
      </constraint>
      <mustSupport value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="IVL&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;] or URG&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;]" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-44, PV1-45" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".effectiveTime (low &amp; high)" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="when.done" />
      </mapping>
    </element>
    <element id="Encounter.period.id">
      <path value="Encounter.period.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.period.extension">
      <path value="Encounter.period.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.period.start">
      <path value="Encounter.period.start" />
      <short value="Starting time with inclusive boundary" />
      <definition value="The start of the period. The boundary is inclusive." />
      <comment value="If the low element is missing, the meaning is that the low boundary is not known." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Period.start" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="dateTime" />
      </type>
      <condition value="ele-1" />
      <condition value="per-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR.1" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="./low" />
      </mapping>
    </element>
    <element id="Encounter.period.end">
      <path value="Encounter.period.end" />
      <short value="End time with inclusive boundary, if not ongoing" />
      <definition value="The end of the period. If the end of the period is missing, it means that the period is ongoing. The start may be in the past, and the end date in the future, which means that period is expected/planned to end at that time." />
      <comment value="The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has a end value of 2012-02-03." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Period.end" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="dateTime" />
      </type>
      <meaningWhenMissing value="If the end of the period is missing, it means that the period is ongoing" />
      <condition value="ele-1" />
      <condition value="per-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR.2" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="./high" />
      </mapping>
    </element>
    <element id="Encounter.length">
      <path value="Encounter.length" />
      <short value="Quantity of time the encounter lasted (less time absent)" />
      <definition value="Quantity of time the encounter lasted. This excludes the time during leaves of absence." />
      <comment value="May differ from the time the Encounter.period lasted because of leave of absence." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.length" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Duration" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="qty-3" />
        <severity value="error" />
        <human value="If a code for the unit is present, the system SHALL also be present" />
        <expression value="code.empty() or system.exists()" />
        <xpath value="not(exists(f:code)) or exists(f:system)" />
      </constraint>
      <constraint>
        <key value="drt-1" />
        <severity value="error" />
        <human value="There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be UCUM." />
        <expression value="code.exists() implies ((system = %ucum) and value.exists())" />
        <xpath value="(f:code or not(f:value)) and (not(exists(f:system)) or f:system/@value='http://unitsofmeasure.org')" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="SN (see also Range) or CQ" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="PQ, IVL&lt;PQ&gt;, MO, CO, depending on the values" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="PQ, IVL&lt;PQ&gt; depending on the values" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="(PV1-45 less PV1-44) iff ( (PV1-44 not empty) and (PV1-45 not empty) ); units in minutes" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".lengthOfStayQuantity" />
      </mapping>
    </element>
    <element id="Encounter.reason">
      <path value="Encounter.reason" />
      <short value="Reason the encounter takes place (code)" />
      <definition value="Reason the encounter takes place, coded according to http://ehelse.no/fhir/CodeSystem/vkp-encounter-camera-reason-v05" />
      <comment value="For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)." />
      <alias value="Indication" />
      <alias value="Admission diagnosis" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.reason" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mustSupport value="true" />
      <isSummary value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterReason" />
        </extension>
        <strength value="extensible" />
        <description value="vkp-encounter-camera-reason-v05" />
        <valueSetReference>
          <reference value="http://ehelse.no/fhir/CodeSystem/vkp-encounter-camera-reason-v05" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="EVN-4 / PV2-3 (note: PV2-3 is nominally constrained to inpatient admissions; HL7 v2 makes no vocabulary suggestions for PV2-3; would not expect PV2 segment or PV2-3 to be in use in all implementations )" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".reasonCode" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="why" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name">
        <valueString value="Diagnosis" />
      </extension>
      <path value="Encounter.diagnosis" />
      <short value="The list of diagnosis relevant to this encounter" />
      <definition value="The list of diagnosis relevant to this encounter." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.diagnosis" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=RSON]" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.id">
      <path value="Encounter.diagnosis.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.extension">
      <path value="Encounter.diagnosis.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.modifierExtension">
      <path value="Encounter.diagnosis.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.condition">
      <path value="Encounter.diagnosis.condition" />
      <short value="Reason the encounter takes place (resource)" />
      <definition value="Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure." />
      <comment value="For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis)." />
      <alias value="Admission diagnosis" />
      <alias value="discharge diagnosis" />
      <alias value="indication" />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.diagnosis.condition" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Condition" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Procedure" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="Resources that would commonly referenced at Encounter.indication would be Condition and/or Procedure. These most closely align with DG1/PRB and PR1 respectively." />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=RSON].target" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="why" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.role">
      <path value="Encounter.diagnosis.role" />
      <short value="Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)" />
      <definition value="Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.diagnosis.role" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="DiagnosisRole" />
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true" />
        </extension>
        <strength value="preferred" />
        <description value="The type of diagnosis this condition represents" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/diagnosis-role" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
    </element>
    <element id="Encounter.diagnosis.rank">
      <path value="Encounter.diagnosis.rank" />
      <short value="Ranking of the diagnosis (for each role type)" />
      <definition value="Ranking of the diagnosis (for each role type)." />
      <comment value="32 bit number; for values larger than this, use decimal" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.diagnosis.rank" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="positiveInt" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=RSON].priority" />
      </mapping>
    </element>
    <element id="Encounter.account">
      <path value="Encounter.account" />
      <short value="The set of accounts that may be used for billing for this Encounter" />
      <definition value="The set of accounts that may be used for billing for this Encounter." />
      <comment value="The billing system may choose to allocate billable items associated with the Encounter to different referenced Accounts based on internal business rules." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.account" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Account" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".pertains.A_Account" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization">
      <path value="Encounter.hospitalization" />
      <short value="Details about the admission to a healthcare service" />
      <definition value="Details about the admission to a healthcare service." />
      <comment value="An Encounter may cover more than just the inpatient stay. Contexts such as outpatients, community clinics, and aged care facilities are also included.&#xD;&#xD;The duration recorded in the period of this encounter covers the entire scope of this hospitalization record." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=COMP].target[classCode=ENC, moodCode=EVN]" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.id">
      <path value="Encounter.hospitalization.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.extension">
      <path value="Encounter.hospitalization.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.modifierExtension">
      <path value="Encounter.hospitalization.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.preAdmissionIdentifier">
      <path value="Encounter.hospitalization.preAdmissionIdentifier" />
      <short value="Pre-admission identifier" />
      <definition value="Pre-admission identifier." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.preAdmissionIdentifier" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Identifier" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CX / EI (occasionally, more often EI maps to a resource id or a URL)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="II - see see identifier pattern at http://wiki.hl7.org/index.php?title=Common_Design_Patterns#Identifier_Pattern for relevant discussion. The Identifier class is a little looser than the v3 type II because it allows URIs as well as registered OIDs or GUIDs.  Also maps to Role[classCode=IDENT]" />
      </mapping>
      <mapping>
        <identity value="servd" />
        <map value="Identifier" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-5" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".id" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.origin">
      <path value="Encounter.hospitalization.origin" />
      <short value="The location from which the patient came before admission" />
      <definition value="The location from which the patient came before admission." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.origin" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Location" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".participation[typeCode=ORG].role" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.admitSource">
      <path value="Encounter.hospitalization.admitSource" />
      <short value="From where patient was admitted (physician referral, transfer)" />
      <definition value="From where patient was admitted (physician referral, transfer)." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.admitSource" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="AdmitSource" />
        </extension>
        <strength value="preferred" />
        <description value="From where the patient was admitted." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-admit-source" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-14" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".admissionReferralSourceCode" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.reAdmission">
      <path value="Encounter.hospitalization.reAdmission" />
      <short value="The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission" />
      <definition value="Whether this hospitalization is a readmission and why if known." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.reAdmission" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="ReAdmissionType" />
        </extension>
        <strength value="example" />
        <description value="The reason for re-admission of this hospitalization encounter." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/v2-0092" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-13" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.dietPreference">
      <path value="Encounter.hospitalization.dietPreference" />
      <short value="Diet preferences reported by the patient" />
      <definition value="Diet preferences reported by the patient." />
      <comment value="For example a patient may request both a dairy-free and nut-free diet preference (not mutually exclusive)." />
      <requirements value="Used to track patient's diet restrictions and/or preference. For a complete description of the nutrition needs of a patient during their stay, one should use the nutritionOrder resource which links to Encounter." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.hospitalization.dietPreference" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="PatientDiet" />
        </extension>
        <strength value="example" />
        <description value="Medical, cultural or ethical food preferences to help with catering requirements." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-diet" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-38" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".outboundRelationship[typeCode=COMP].target[classCode=SBADM, moodCode=EVN, code=&quot;diet&quot;]" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.specialCourtesy">
      <path value="Encounter.hospitalization.specialCourtesy" />
      <short value="Special courtesies (VIP, board member)" />
      <definition value="Special courtesies (VIP, board member)." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.hospitalization.specialCourtesy" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Courtesies" />
        </extension>
        <strength value="preferred" />
        <description value="Special courtesies" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-special-courtesy" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-16" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".specialCourtesiesCode" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.specialArrangement">
      <path value="Encounter.hospitalization.specialArrangement" />
      <short value="Wheelchair, translator, stretcher, etc." />
      <definition value="Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.hospitalization.specialArrangement" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Arrangements" />
        </extension>
        <strength value="preferred" />
        <description value="Special arrangements" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-special-arrangements" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-15 / OBR-30 / OBR-43" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".specialArrangementCode" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.destination">
      <path value="Encounter.hospitalization.destination" />
      <short value="Location to which the patient is discharged" />
      <definition value="Location to which the patient is discharged." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.destination" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Location" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-37" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".participation[typeCode=DST]" />
      </mapping>
    </element>
    <element id="Encounter.hospitalization.dischargeDisposition">
      <path value="Encounter.hospitalization.dischargeDisposition" />
      <short value="Category or kind of location after discharge" />
      <definition value="Category or kind of location after discharge." />
      <comment value="Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.hospitalization.dischargeDisposition" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="CodeableConcept" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="DischargeDisp" />
        </extension>
        <strength value="example" />
        <description value="Discharge Disposition" />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-discharge-disposition" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="CE/CNE/CWE" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="CD" />
      </mapping>
      <mapping>
        <identity value="orim" />
        <map value="fhir:CodeableConcept rdfs:subClassOf dt:CD" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-36" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".dischargeDispositionCode" />
      </mapping>
    </element>
    <element id="Encounter.location">
      <path value="Encounter.location" />
      <short value="List of locations where the patient has been" />
      <definition value="List of locations where  the patient has been during this encounter." />
      <comment value="Virtual encounters can be recorded in the Encounter by specifying a location reference to a location of type &quot;kind&quot; such as &quot;client's home&quot; and an encounter.class = &quot;virtual&quot;." />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Encounter.location" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="BackboneElement" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".participation[typeCode=LOC]" />
      </mapping>
    </element>
    <element id="Encounter.location.id">
      <path value="Encounter.location.id" />
      <representation value="xmlAttr" />
      <short value="xml:id (or equivalent in JSON)" />
      <definition value="unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces." />
      <comment value="Note that FHIR strings may not exceed 1MB in size" />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Element.id" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="string" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
    </element>
    <element id="Encounter.location.extension">
      <path value="Encounter.location.extension" />
      <slicing>
        <discriminator>
          <type value="value" />
          <path value="url" />
        </discriminator>
        <description value="Extensions are always sliced by (at least) url" />
        <rules value="open" />
      </slicing>
      <short value="Additional Content defined by implementations" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. In order to make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="Element.extension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.location.modifierExtension">
      <path value="Encounter.location.modifierExtension" />
      <short value="Extensions that cannot be ignored" />
      <definition value="May be used to represent additional information that is not part of the basic definition of the element, and that modifies the understanding of the element that contains it. Usually modifier elements provide negation or qualification. In order to make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions." />
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone." />
      <alias value="extensions" />
      <alias value="user content" />
      <alias value="modifiers" />
      <min value="0" />
      <max value="*" />
      <base>
        <path value="BackboneElement.modifierExtension" />
        <min value="0" />
        <max value="*" />
      </base>
      <type>
        <code value="Extension" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ext-1" />
        <severity value="error" />
        <human value="Must have either extensions or value[x], not both" />
        <expression value="extension.exists() != value.exists()" />
        <xpath value="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])" />
      </constraint>
      <isModifier value="true" />
      <isSummary value="true" />
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="N/A" />
      </mapping>
    </element>
    <element id="Encounter.location.location">
      <path value="Encounter.location.location" />
      <short value="Location the encounter takes place" />
      <definition value="The location where the encounter takes place." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="1" />
      <max value="1" />
      <base>
        <path value="Encounter.location.location" />
        <min value="1" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Location" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-3 / PV1-6 / PV1-11 / PV1-42 / PV1-43" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".role" />
      </mapping>
      <mapping>
        <identity value="w5" />
        <map value="where" />
      </mapping>
    </element>
    <element id="Encounter.location.status">
      <path value="Encounter.location.status" />
      <short value="planned | active | reserved | completed" />
      <definition value="The status of the participants' presence at the specified location during the period specified. If the participant is is no longer at the location, then the period will have an end date/time." />
      <comment value="When the patient is no longer active at a location, then the period end date is entered, and the status may be changed to completed." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.location.status" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="code" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterLocationStatus" />
        </extension>
        <strength value="required" />
        <description value="The status of the location." />
        <valueSetReference>
          <reference value="http://hl7.org/fhir/ValueSet/encounter-location-status" />
        </valueSetReference>
      </binding>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".role.statusCode" />
      </mapping>
    </element>
    <element id="Encounter.location.period">
      <path value="Encounter.location.period" />
      <short value="Time period during which the patient was present at the location" />
      <definition value="Time period during which the patient was present at the location." />
      <comment value="This is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. &quot;the patient was an inpatient of the hospital for this time range&quot;) or one value from the range applies (e.g. &quot;give to the patient between these two times&quot;). If duration is required, specify the type as Interval|Duration." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.location.period" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Period" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="per-1" />
        <severity value="error" />
        <human value="If present, start SHALL have a lower value than end" />
        <expression value="start.empty() or end.empty() or (start &lt;= end)" />
        <xpath value="not(exists(f:start)) or not(exists(f:end)) or (f:start/@value &lt;= f:end/@value)" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="DR" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="IVL&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;] or URG&lt;TS&gt;[lowClosed=&quot;true&quot; and highClosed=&quot;true&quot;]" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".time" />
      </mapping>
    </element>
    <element id="Encounter.serviceProvider">
      <path value="Encounter.serviceProvider" />
      <short value="The custodian organization of this Encounter record" />
      <definition value="An organization that is in charge of maintaining the information of this Encounter (e.g. who maintains the report or the master service catalog item, etc.). This MAY be the same as the organization on the Patient record, however it could be different. This MAY not be not the Service Delivery Location's Organization." />
      <comment value="References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.serviceProvider" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Organization" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="v2" />
        <map value="PV1-10 / PL.6  &amp; PL.1  (note: HL7 v2 definition is &quot;the treatment or type of surgery that the patient is scheduled to receive&quot;; seems slightly out of alignment with the concept name 'hospital service'. Would not trust that implementations apply this semantic by default)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".particiaption[typeCode=PFM].role" />
      </mapping>
    </element>
    <element id="Encounter.partOf">
      <path value="Encounter.partOf" />
      <short value="Another Encounter this encounter is part of" />
      <definition value="Another Encounter of which this encounter is a part of (administratively or in time)." />
      <comment value="This is also used for associating a child's encounter back to the mother's encounter.&#xD;&#xD;Refer to the Notes section in the Patient resource for further details." />
      <min value="0" />
      <max value="1" />
      <base>
        <path value="Encounter.partOf" />
        <min value="0" />
        <max value="1" />
      </base>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Encounter" />
      </type>
      <condition value="ele-1" />
      <constraint>
        <key value="ele-1" />
        <severity value="error" />
        <human value="All FHIR elements must have a @value or children" />
        <expression value="hasValue() | (children().count() &gt; id.count())" />
        <xpath value="@value|f:*|h:div" />
      </constraint>
      <constraint>
        <key value="ref-1" />
        <severity value="error" />
        <human value="SHALL have a contained resource if a local reference is provided" />
        <expression value="reference.startsWith('#').not() or (reference.substring(1).trace('url') in %resource.contained.id.trace('ids'))" />
        <xpath value="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])" />
      </constraint>
      <mapping>
        <identity value="rim" />
        <map value="n/a" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value="The target of a resource reference is a RIM entry point (Act, Role, or Entity)" />
      </mapping>
      <mapping>
        <identity value="rim" />
        <map value=".inboundRelationship[typeCode=COMP].source[classCode=COMP, moodCode=EVN]" />
      </mapping>
    </element>
  </snapshot>
  <differential>
    <element id="Encounter">
      <path value="Encounter" />
      <short value="An digital/virtual interaction during which services are provided to the patient " />
      <definition value="The digital (virtual) Encounter is caracterized as an encounter that uses some technological mean to perform the encounter instead of a face-to-face meeting.&#xD;&#xA;&#xD;&#xA;An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient." />
      <comment value="The use-case in question is performing a virtual encounter using a camera device to perform the encounter." />
      <alias value="digitalt tilsyn" />
    </element>
    <element id="Encounter.identifier">
      <path value="Encounter.identifier" />
      <definition value="Unique code or number identifying the Encounter&#xD;&#xA;&#xD;&#xA;VKP project uses UUID. &#xD;&#xA;&#xD;&#xA;Example: urn:uuid:2e82976a-35d6-4870-a4d5-d79abf772a8f" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.type">
      <path value="Encounter.type" />
      <short value="Event type created by the camera" />
      <definition value="Specific Camera event type" />
      <mustSupport value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterType" />
        </extension>
        <strength value="extensible" />
        <valueSetReference>
          <reference value="http://ehelse.no/fhir/ValueSet/vkp-encounter-camera-events-v05" />
        </valueSetReference>
      </binding>
    </element>
    <element id="Encounter.subject">
      <path value="Encounter.subject" />
      <short value="The patient or group present at the encounter" />
      <definition value="Reference to the patient that is subject to the encounter, identified by Norwegian Fødselsnummer.&#xD;&#xA;&#xD;&#xA;A link to a resource representing the person or the group to whom the medication will be given.&#xD;&#xA;&#xD;&#xA;VKP always references a Patient Resource using a norwegian Fødslesnummer in a logical identifier in the subject.identifier element.&#xD;&#xA;The Name of the patient should be given in the subject.display element.&#xD;&#xA;&#xD;&#xA;Example:&#xD;&#xA;~~~~&#xD;&#xA;&quot;subject&quot;:{&#xD;&#xA;   &quot;identifier&quot;:{&#xD;&#xA;      &quot;system&quot;:&quot;urn:oid:2.16.578.1.12.4.1.4.1&quot;,&#xD;&#xA;      &quot;value&quot;:&quot;05073500186&quot;&#xD;&#xA;     },&#xD;&#xA;     &quot;display&quot;:&quot;Ærlend Sørgård&quot;&#xD;&#xA;}&#xD;&#xA;~~~~" />
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Patient" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Group" />
      </type>
      <type>
        <code value="Reference" />
        <targetProfile value="http://ehelse.no/fhir/StructureDefinition/vkp-Patient" />
      </type>
      <mustSupport value="true" />
    </element>
    <element id="Encounter.subject.identifier">
      <path value="Encounter.subject.identifier" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.participant">
      <path value="Encounter.participant" />
      <definition value="Refernce to the individual that participated in the encounter, usually health care provider. Identified using Norwegian Fødselsnummer&#xD;&#xA;&#xD;&#xA;Example: &#xD;&#xA;~~~~&#xD;&#xA;&quot;participant&quot;: [&#xD;&#xA;   {&#xD;&#xA;      &quot;individual&quot;:{&#xD;&#xA;         &quot;identifier&quot;:{&#xD;&#xA;            &quot;system&quot;:&quot;urn:oid:2.16.578.1.12.4.1.4.1&quot;,&#xD;&#xA;            &quot;value&quot;:&quot;04056600324&quot;&#xD;&#xA;         },&#xD;&#xA;         &quot;display&quot;:&quot;Magnar Koman&quot;&#xD;&#xA;      }&#xD;&#xA;   }&#xD;&#xA;]&#xD;&#xA;~~~~" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.participant.individual">
      <path value="Encounter.participant.individual" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.participant.individual.identifier">
      <path value="Encounter.participant.individual.identifier" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.period">
      <path value="Encounter.period" />
      <short value="The start and end time of the encounter/timestamp" />
      <definition value="Timestamp of when the encounter was finished, the system could provide both start and end times&#xD;&#xA;&#xD;&#xA;Example code: &#xD;&#xA;~~~&#xD;&#xA;&quot;period&quot;:{&#xD;&#xA;   &quot;end&quot;:&quot;2018-06-25T10:00:00.936+02:00&quot;&#xD;&#xA;}&#xD;&#xA;~~~" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.period.end">
      <path value="Encounter.period.end" />
      <mustSupport value="true" />
    </element>
    <element id="Encounter.reason">
      <path value="Encounter.reason" />
      <definition value="Reason the encounter takes place, coded according to http://ehelse.no/fhir/CodeSystem/vkp-encounter-camera-reason-v05" />
      <mustSupport value="true" />
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="EncounterReason" />
        </extension>
        <strength value="extensible" />
        <description value="vkp-encounter-camera-reason-v05" />
        <valueSetReference>
          <reference value="http://ehelse.no/fhir/CodeSystem/vkp-encounter-camera-reason-v05" />
        </valueSetReference>
      </binding>
    </element>
  </differential>
</StructureDefinition>