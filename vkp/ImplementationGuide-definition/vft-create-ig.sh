#!/bin/bash

mkdir /tmp/vftig
mkdir /tmp/vftig/resources

cp vkp-Medication-ImplementationGuide.json /tmp/vftig
cp instance-template-base.html /tmp/vftig
cp instance-template-format.html /tmp/vftig
cp vkp-Medication-ImplementationGuide.xml /tmp/vftig/resources
cp -r pages /tmp/vftig

cp -r ../StructureDefinition /tmp/vftig
cp -r ../CodeSystem /tmp/vftig
cp -r ../examples /tmp/vftig
cp -r ../ValueSet /tmp/vftig

cd /tmp/vftig
cp /home/lars/org.hl7.fhir.igpublisher.jar .

java -jar org.hl7.fhir.igpublisher.jar -ig vkp-Medication-ImplementationGuide.json 

cp -r /tmp/vftig/output /home/lars/share/IG-output
cp -r /tmp/vftig/temp/_includes /home/lars/share/IG-output/_includes
cp -r /tmp/vftig/qa /home/lars/share/IG-output/qa


