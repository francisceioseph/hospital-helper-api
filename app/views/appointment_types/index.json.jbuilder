# frozen_string_literal: true

json.array! @appointment_types, partial: 'appointment_types/appointment_type', as: :appointment_type
