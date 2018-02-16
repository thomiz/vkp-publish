|                                                                                                                                                                          | 
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
| Mapping - ARBEIDSUTKAST;;;                                                                                                                                               | 
| Standard for hodemelding;FHIR;Kode/type;Kommentar                                                                                                                        | 
| ;Bundle;;                                                                                                                                                                | 
| ;Bundle.type;=document|message;                                                                                                                                          | 
| ;Bundle.entry;;Her ligger MessageHeader                                                                                                                                  | 
| MsgHead;MessageHeader;;                                                                                                                                                  | 
| MsgInfo;;;                                                                                                                                                               | 
| Type;MessageHeader.event;8279 Meldingens funksjon;FHIR har sine egne message events                                                                                      | 
| MIGversion;n/a;;                                                                                                                                                         | 
| GenDate;MessageHeader.timestamp;instant (dateTime, minimum på sekundet);                                                                                                 | 
| MsgId;Bundle.identifier;;Usikker, finnes ikke hva FHIR mener er msg-id utover ID på Bundle-ressursen                                                                     | 
| ProcessingStatus;;;                                                                                                                                                      | 
| RequestedPriority;;;                                                                                                                                                     | 
| Ack;;;Det skal alltid sendes kvittering, så denne er uansett unødvendig.                                                                                                 | 
| ConverssationRef;;;                                                                                                                                                      | 
| -- RefToParent;MessageHeader.response.identifier;;                                                                                                                       | 
| -- RefToConversation;(MessageHeader.response.identifier);;                                                                                                               | 
| Sender;;;                                                                                                                                                                | 
| -- ComMethod;;;Hvis brev er aktuelt...                                                                                                                                   | 
| -- Organisation;MessageHeader.sender (reference);Ref til Practitioner|Organization;Kan være Practitioner hvis avsender er fastlege, men vi er vel på vei bort fra dette. | 
| -- -- HealthcareProfessional;MessageHeader.author (reference);Ref til Practitioner;Forfatter. Finnes også en .enterer med ref til practitioner                           | 
| Receiver;MessageHeader.receiver (reference);Ref til Practitioner|Organization;Ellers som for Sender                                                                      | 
| OtherReceiver;;;                                                                                                                                                         | 
| Patient;MessageHeader.focus (reference);;Pasient er egen entry i bundle, som annet innhold                                                                               | 
| Document;;;                                                                                                                                                              | 
| -- DocumentConnection;;;NOARK-4-greier                                                                                                                                   | 
| -- ContentType;;;                                                                                                                                                        | 
| -- ContentDescription;;;Overskrift. FHIR har mye summaries, TODO                                                                                                         | 
| -- ContentCategory;;;                                                                                                                                                    | 
| -- Consent;;;Angir om det er innhentet samtykke                                                                                                                          | 
| -- Annotation;;;Kommentar/merknad. FHIR-støtte finnes.                                                                                                                   | 
| -- FromDate;;;Del av innholdsressurs, f.eks Observation                                                                                                                  | 
| -- ToDate;;;Del av innholdsressurs, f.eks Observation                                                                                                                    | 
| -- idRef;;;EPJ-OID. Implisitt dekket i FHIR ved bruk av ressurser?                                                                                                       | 
| -- EnquiryRefId;MessageHeader.response;;Overflødig? Ref RefToParent                                                                                                      | 
| -- RefDoc;;;                                                                                                                                                             | 
| -- -- IssueDate;;;Dekkes av metadata i ressurser, kanskje mest aktuelt for Document                                                                                      | 
| -- -- MsgType;;;A | XML | REF. Er oppgitt som en del av FHIR om informasjonen ligger som Entry/Ressurs, Referanse/Ressurs, etc                                           | 
| -- -- MimeType;Binary.contentType;;Er det snakk om andre typer er dette dekket i ressursen Binary                                                                        | 
| -- -- Description;;;Dekket av ressurs i FHIR?                                                                                                                            | 
| -- -- Compression;;;Aktuelt?                                                                                                                                             | 
| -- -- FileReference;Bundle.entry.fullUrl;;Riktig tenkt?                                                                                                                  | 
| -- -- Content;MessageHeader.focus (reference);;                                                                                                                          | 
| PatientReport;;;(for innrapportering helseregistre)                                                                                                                      | 
| (...);;;                                                                                                                                                                 | 
| Signature;Bundle.signature;Signature;XML Dsig eller JWT                                                                                                                  | 
| ;;;                                                                                                                                                                      | 
| ;MessageHeader.destination.endpoint;;TODO                                                                                                                                | 
| ;;;                                                                                                                                                                      | 
| ;MessageHeader.source;;(endpoint)                                                                                                                                        | 
| ;MessageHeader.destionation;;(endpoint)                                                                                                                                  | 
