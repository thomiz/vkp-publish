#!/bin/bash

cd /var/webhook/FHIR
git pull
cd ..

#git clone git@git.sarepta.ehelse.no:utvikling/FHIR.git

mkdir /tmp/vftig
mkdir /tmp/vftig/resources

cp FHIR/vkp/ImplementationGuide-definition/vkp-Medication-ImplementationGuide.json /tmp/vftig
cp FHIR/vkp/ImplementationGuide-definition/instance-template-base.html /tmp/vftig
cp FHIR/vkp/ImplementationGuide-definition/instance-template-format.html /tmp/vftig
cp FHIR/vkp/ImplementationGuide-definition/vkp-Medication-ImplementationGuide.xml /tmp/vftig/resources
cp -r FHIR/vkp/ImplementationGuide-definition/pages /tmp/vftig

cp -r FHIR/vkp/StructureDefinition /tmp/vftig
cp -r FHIR/vkp//CodeSystem /tmp/vftig
cp -r FHIR/vkp/examples /tmp/vftig
cp -r FHIR/vkp/ValueSet /tmp/vftig

cd /tmp/vftig
cp /var/webhook/org.hl7.fhir.igpublisher.jar .

java -jar org.hl7.fhir.igpublisher.jar -ig vkp-Medication-ImplementationGuide.json

cp -r /tmp/vftig/output/* /var/www/html/ig
cp -r /tmp/vftig/qa /var/www/html/ig
cp -r /tmp/vftig/temp /var/www/html/ig

