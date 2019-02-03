if personal_datum.present?
  json.full_name   personal_datum.full_name
  json.social_name personal_datum.social_name
  json.rg          personal_datum.rg
  json.cpf         personal_datum.cpf
  json.nis         personal_datum.nis
  json.nationality personal_datum.nationality
  json.skin_color  personal_datum.skin_color
  json.gender      personal_datum.gender
  json.crm         personal_datum.crm if personal_datum.crm.present?
  json.cns         personal_datum.cns if personal_datum.cns.present?
  
  if personal_datum.birth_datum.present?
    json.birth_datum do
      json.date_of_birth    personal_datum.birth_datum.date_of_birth
      json.country_of_birth personal_datum.birth_datum.country_of_birth
      json.state_of_birth   personal_datum.birth_datum.state_of_birth
      json.city_of_birth    personal_datum.birth_datum.city_of_birth
    end
  end
  
  if personal_datum.immigration_datum.present?
    json.immigration_datum do
      json.nationalization_date personal_datum.immigration_datum.nationalization_date
      json.oridinance_date      personal_datum.immigration_datum.oridinance_date
    end
  end
end

