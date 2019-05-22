# frozen_string_literal: true

json.id           pacient.id
json.profile_type pacient.profile_type

json.personal_datum do
  json.partial! "personal_data/personal_datum", personal_datum: pacient.personal_datum
end

if pacient.next_of_kin.present?
  json.next_of_kin do
    json.id        pacient.next_of_kin.id
    json.full_name pacient.next_of_kin.full_name
    json.cpf       pacient.next_of_kin.cpf
  end
end

if pacient.family_datum.present?
  json.family_datum do
    json.partial! 'family_data/family_datum', family_datum: pacient.family_datum
  end
end

if pacient.addresses.present?
  json.addresses do
    json.array! pacient.addresses, partial: 'addresses/address', as: :address
  end
end

if pacient.telephones.present?
  json.telephones do
    json.array! pacient.telephones, partial: 'telephones/telephone', as: :telephone
  end
end

if pacient.emails.present?
  json.emails do
    json.array! pacient.emails, partial: 'emails/email', as: :email
  end
end