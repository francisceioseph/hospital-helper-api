json.id @pacient.id

json.personal_datum do
  json.partial! "personal_data/personal_datum", 
    personal_datum: @pacient.personal_datum
end

json.appointments do
  json.array! @pacient.appointments, partial: 'appointments/appointment', as: :appointment
end
