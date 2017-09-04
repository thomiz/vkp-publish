På hjemmepc:

curl.exe http://localhost:8080/baseDstu2/StructureDefinition/Velocityms --upload-file extensions\Velocityms.structuredefinition.xml
curl.exe http://tgs-fhir-web.testsenter.nhn.no/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json
curl.exe http://localhost:8080/baseDstu3/Bundle --upload-file examples/eVik-message-bundle-01.json