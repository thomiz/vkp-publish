# Område for utvikling FHIR-komponenter:
- Profiler av resources
- Extensions
- Eksempler
- Implemntasjonsguider med metafiler

## Forslag til Workflow:
**Feature branch workflow:**
![Feature branch workflow]
(https://git.sarepta.ehelse.no/utvikling/FHIR/raw/92dff80b4b825be384908a90a3abfa7d6a8d6a46/Feature-branch-workflow.JPG)

Vi baserer oss på at nye features utvikles i egne feature branches og merges inn i master branch etterhvert som de er klare. Arbeidsflyten er forklart i detalj her:
(https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

## Katalogstruktur
For at repositoriet skal være enkelt å navigere i for alle foreslår vi at alle bygger prosjektene sine over samme lest:

|\\[prosjektnavn]| |
|---|---|
| \\CodeSystem | CodeSystem definisjoner |
| \\Examples | eksempler |
| \\REST-kall | Optional |
| \\StructureDefinition | alle extensions og profiler |
| \\ValueSet | ValueSet definisjoner |
| \\ImplementationGuide-definition | Definisjonene for implementationguide |
| \\ImplementationGuidePublish | Rendring av implementationguide for publisering på web |
| [prosjektnavn]-[versjon].zip | Pakke med det ferdige resultatet for en versjon |

## Navngivning av filer
Inne i katalogene anbefaler vi å følge navngivningsregler fra [SIMPLIFIER Best practices] (https://simplifier.net/guide/ProfilingAcademy/Best-practices)

**Filnavn for profiler og extensions:**
vkp-Flag-v05.structuredefinition-profile.xml
vkp-additionalpositiondata-v05.structuredefinition-extension.xml

**URL'ene i koden:**
http://ehelse.no/fhir/StructureDefinition/vkp-Flag-v05

NB! mye taler for å utelate versjonsnummer i navn og URL og heller markere en full versjon med Tags i Git-repo og pakke den i en .zip fil

Husk å sjekke [wiki'en](https://git.sarepta.ehelse.no/utvikling/FHIR/wikis/home)

Thomas og Espen