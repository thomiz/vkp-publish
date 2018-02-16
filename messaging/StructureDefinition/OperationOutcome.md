# OperationOutcome

[Kilde](https://www.hl7.org/fhir/operationoutcome.html)

Formål: Fungere som AppRec ved messaging i samme kontekst som AppRec: Samhandling mellom virksomheter.

> The OperationOutcome resource is used in the following circumstances: <br/> (...) <br/> * As part of a message response, usually when the message has not been processed correctly

## Krav (utkast for diskusjon)

* Det skal alltid sendes kvittering ved meldingsutveksling mellom virksomheter, også positive. 
 <br/>**Problem**: OperationOutcome har ikke "OK", bare "information" (severity)/"informational"(code). Mulig "positiv AppRec" må være en egen annen/melding.
* Det skal alltid sendes eventuell negativ kvittering ved meldingsutveksling internt i virksomheter, for eksempel mellom systemer på et sykehus. 

Se også DetectedIssue

## Struktur

| Name |  Card. | Type | Description & Constraints | Profil |
| --  |  ---   | ---  | ---                       | --- |
|OperationOutcome||DomainResource|||
|issue|1..*|BackboneElement|A single issue associated with the action||
|severity|1..1|code||
|code|1..1|code|||
|details|0..|CodeableConcept||||
|diagnostics|0..|string||||
|location|0..*|string|||
|expression|0..*|string|||||


