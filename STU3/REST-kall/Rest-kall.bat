På hjemmepc:

curl.exe http://localhost:8080/baseDstu2/StructureDefinition/Velocityms --upload-file extensions\Velocityms.structuredefinition.xml
curl.exe http://tgs-fhir-web.testsenter.nhn.no/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json
curl.exe http://localhost:8080/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json

curl.exe http://localhost:8080/baseDstu3/StructureDefinition/vft-timestamp --upload-file StructureDefinition\vft-timestamp.structuredefinition.xml
curl.exe http://localhost:8080/baseDstu3/StructureDefinition/test-flag --upload-file StructureDefinition\test-flag.structuredefinition.xml