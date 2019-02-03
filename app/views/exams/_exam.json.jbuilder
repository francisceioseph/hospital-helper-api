# frozen_string_literal: true

json.id           exam.id
json.scheduled_to exam.scheduled_to
json.finished     exam.finished
json.canceled     exam.canceled

json.doctor do
  json.id        exam.doctor_id
  json.full_name exam.doctor.personal_datum.full_name
end

json.pacient do
  json.id        exam.pacient_id
  json.full_name exam.pacient.personal_datum.full_name
end

json.exam_type do
  json.id             exam.exam_type_id
  json.exam_type_name exam.exam_type.exam_type_name
end
