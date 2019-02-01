# frozen_string_literal: true

json.id doctor.id

json.specialties doctor.specialties do |specialty|
  json.id specialty.id
  json.specialty_name specialty.specialty_name
end
