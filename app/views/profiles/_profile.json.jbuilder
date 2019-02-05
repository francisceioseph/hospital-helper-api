
json.id           profile.id
json.profile_type profile.profile_type

json.personal_datum do
  json.partial! "personal_data/personal_datum", personal_datum: profile.personal_datum
end

if profile.addresses.present?
  json.addresses do
    json.array! profile.addresses, partial: 'addresses/address', as: :address
  end
end

if profile.telephones.present?
  json.telephones do
    json.array! profile.telephones, partial: 'telephones/telephone', as: :telephone
  end
end

if profile.emails.present?
  json.emails do
    json.array! profile.emails, partial: 'emails/email', as: :email
  end
end