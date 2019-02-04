# frozen_string_literal: true

json.id doctor.id

json.specialties doctor.specialties do |specialty|
  json.partial! "specialties/specialty", specialty: specialty
end

json.personal_datum do
  json.partial! "personal_data/personal_datum", 
    personal_datum: doctor.personal_datum
end

if doctor.addresses.present? 
  json.addresses do
    json.array! doctor.addresses, partial: 'addresses/address', as: :address
  end
end

if doctor.telephones.present?
  json.telephones do
    json.array! doctor.telephones, partial: 'telephones/telephone', as: :telephone
  end
end

if doctor.emails.present?
  json.emails do
    json.array! doctor.emails, partial: 'emails/email', as: :email
  end
end
