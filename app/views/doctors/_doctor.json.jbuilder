# frozen_string_literal: true

json.id doctor.id

json.specialties doctor.specialties do |specialty|
  json.partial! "specialties/specialty", specialty: specialty
end

json.personal_datum do 
  json.partial! "personal_data/personal_datum", personal_datum: doctor.personal_datum
end