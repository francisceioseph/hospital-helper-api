# frozen_string_literal: true

json.scheduled_to  surgery.scheduled_to
json.real_end_time surgery.real_end_time
json.finished      surgery.finished
json.canceled      surgery.canceled

json.receipt_url  surgery.try(:receipt).try(:url)

json.doctor do
  json.id        surgery.doctor_id
  json.full_name surgery.doctor.personal_datum.full_name
end

json.pacient do
  json.id        surgery.pacient_id
  json.full_name surgery.pacient.personal_datum.full_name
end

json.surgery_type do
  json.id                surgery.surgery_type_id
  json.surgery_type_name surgery.surgery_type.surgery_type_name
end
