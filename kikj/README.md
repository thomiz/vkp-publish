# Område for profiler tilhørende Kritisk informasjon i Kjernejournal (KIKJ)
- Profiler av resources
- Extensions
- Eksempler
- Implementasjonsguider med metafiler

## Publisering
Ferdige profiler publiseres også her: 
https://simplifier.net/KritiskInfo/~resources

## Vi benytter Feature branch workflow
![Feature branch workflow]
(https://git.sarepta.ehelse.no/utvikling/FHIR/raw/92dff80b4b825be384908a90a3abfa7d6a8d6a46/Feature-branch-workflow.JPG)

Vi baserer oss på at nye features utvikles i egne feature branches og merges inn i master branch etterhvert som de er klare. Arbeidsflyten er forklart i detalj her:
https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow

## Katalogstruktur

|\\[prosjektnavn]| | |
|---|---|---|
| |\\CodeSystem | CodeSystem definisjoner |
| |\\examples | eksempler |
| |\\REST-kall | Optional |
| |\\StructureDefinition | alle extensions og profiler |
| |\\ValueSet | ValueSet definisjoner |
| |\\ImplementationGuide-definition | Definisjonene for implementationguide |
| |\\ImplementationGuidePublish | Rendring av implementationguide for publisering på web |
| |[prosjektnavn]-[versjon].zip | Pakke med det ferdige resultatet for en versjon |

## Navngivning av filer
Inne i katalogene benytter vi navngivningsregler fra [SIMPLIFIER Best practices] (https://simplifier.net/guide/ProfilingAcademy/Best-practices)


## kontakt

anders punktum almas at ehelse punktum no
