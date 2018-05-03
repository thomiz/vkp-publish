# Hodemelding -> MessageHeader

| Hodemelding        | FHIR           | Kode/type  | Kommentar |
| --- |---|---|---|
|msgHead|MessageHeader|||
|**MsgInfo**||||
|Type|MessageHeader.event|8279 Meldingens funksjon|FHIR har sine egne events|
|MIGversion|n/a|||
|GenDate|MessageHeader.timestamp|instant (dateTime, minimum på sekundet)||
|MsgId|Bundle.identifier||Usikker, finner ikke hva FHIR mener er msg-id utover ID på Bundle-ressursen|
|ProcessingStatus||||
|RequestedPriority||||
|Ack|||Det skal alltid sendes kvittering, så denne er uansett unødvendig|
|*ConversationRef*||||
|RefToParent|MessageHeader.response.identifier|||
|RefToConversation|(MessageHeader.response.identifier|||
|*Sender*||||
|ComMethod|||Trolig ikke aktuell|
|Organisation|MessageHeader.sender (reference)|Ref til Practitioner eller _Organization_|Kan være Practitioner hvis avsender er fastlege, men vi er vel på vei bort fra dette.|
|HealthCareProfessional|MessageHeader.author (reference)|Ref til *practitioner*|Forfatter. Finnes også en .enterer med ref til practitioner|
|*Receiver*|MessageHeader.receiver (reference)|Ref til Practitioner eller _Organization_||
|OtherReceiver|||Ikke aktuelt|
|Patient|MessageHeader.focus (reference)||Pasient er egen entry i bundle, som annet innhold|
|**Document**||||
|DocumentConnection|||NOARK-4, ikke aktuelt?|
|ContentType|||Ikke aktuelt?|
|ContentDescription|||Overskrift. FHIR har mye summaries, sjekk|
|ContentCategory||||
|Consent|||Angir om det er innhentet samtykke|
|Annotation|||Kommentar/merknad. FHIR-støtte finnes.|
|FromDate||||
|ToDate||||
|idRef|||EPJ-OID. Implisitt dekket i FHIR ved bruk av ressurser?|
|Enquiry|MessageHeader.response||Overflødig? RefToParent|
|**RefDoc**||||
|IssueDate||||
|MsgType||||
|MimeType||||
|Description||||
|||||
|||||
|||||
|||||

