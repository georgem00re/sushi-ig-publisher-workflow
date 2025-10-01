Profile: MyObservation
Parent: Observation
Description: "An example profile of the Observation resource for recording vital signs."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* valueQuantity 1..1 MS
* valueQuantity.value MS
* valueQuantity.unit MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)

Instance: ObservationExample
InstanceOf: MyObservation
Description: "An example Observation recording a patient's body temperature."
* status = #final
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(PatientExample)
* effectiveDateTime = "2025-09-26"
* valueQuantity.value = 37.0
* valueQuantity.unit = "degrees C"
* valueQuantity.system = "http://unitsofmeasure.org"