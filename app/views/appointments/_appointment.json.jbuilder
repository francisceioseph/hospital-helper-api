# frozen_string_literal: true

json.scheduled_to      appointment.scheduled_to
json.intended_end_time appointment.intended_end_time
json.real_end_time     appointment.real_end_time
json.finished          appointment.finished
json.canceled          appointment.canceled

json.doctor            appointment.doctor_id
json.pacient           appointment.pacient_id
json.prontuario        appointment.prontuario_id
