# Hodemelding -> MessageHeader

| Hodemelding        | FHIR           | Kode/type  | Kommentar |
| --- |---|---|---|
|msgHead|MessageHeader|||
|MsgInfo||||
|Type|MessageHeader.event|8279 Meldingens funksjon|FHIR har sine egne events|
|MIGversion|n/a|||
|GenDate|MessageHeader.timestamp|instant (dateTime, minimum på sekundet)||
|MsgId|Bundle.identifier||Usikker, finner ikke hva FHIR mener er msg-id utover ID på Bundle-ressursen|
|ProcessingStatus||||
|RequestedPriority||||
|Ack|||Det skal alltid sendes kvittering, så denne er uansett unødvendig|


