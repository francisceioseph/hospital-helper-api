# frozen_string_literal: true

json.scheduled_to      appointment.scheduled_to
json.intended_end_time appointment.intended_end_time
json.real_end_time     appointment.real_end_time
json.finished          appointment.finished
json.canceled          appointment.canceled

json.doctor do
  json.id        appointment.doctor_id
  json.full_name appointment.doctor.personal_datum.full_name
end

json.pacient do
  json.id        appointment.pacient_id
  json.full_name appointment.pacient.personal_datum.full_name
end

json.appointment_type do
  json.id       appointment.appointment_type_id
  json.appointment_type_name appointment.appointment_type.appointment_type_name
end

json.prontuario appointment.prontuario_id
