require 'swagger_helper'

describe 'Doctors Profile API' do

  path '/doctors' do
    post 'Creates a Doctor Profile for a given user' do
      tags 'Doctors'
      consumes 'application/json'
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          doctor_specialties: { 
            type: :array,
            items: {
              type: :object,
            }
          },
          personal_datum: {
            type: :object,
            properties: {
              id: { type: :integer, 'x-nullable': true },
              full_name: { type: :string },
              social_name: { type: :string, 'x-nullable': true },
              rg: { type: :string, 'x-nullable': true},
              cpf: { type: :string, 'x-nullable': true},
              crm: { type: :string, 'x-nullable': true},
              nis: { type: :string, 'x-nullable': true},
              nationality: { type: :string, 'x-nullable': true},
              skin_color: { type: :string, 'x-nullable': true},
              gender: { type: :string, 'x-nullable': true},
              birth_datum: {
                type: :object,
                properties: {
                  id: { type: :integer, 'x-nullable': true },
                  date_of_birth: { type: :string },
                  country_of_birth: { type: :string, 'x-nullable': true },
                  state_of_birth: { type: :string, 'x-nullable': true },
                  city_of_birth: { type: :string, 'x-nullable': true },
                  personal_datum_id: { type: :integer, 'x-nullable': true }
                }
              }
            }
          },
          addresses: {
            type: :array,
            items: {
              type: :object,
              properties: {
                street_name: { type: :string },
                house_number: { type: :integer },
                zipcode: { type: :string },
                neighborhood: { type: :string },
                city: { type: :string },
                state: { type: :string }
              }
            }
          },
          telephones: {
            type: :array,
            items: {
              type: :object,
              properties: {
                number: { type: :string },
                contact_person: { type: :string }
              }
            }
          },
          emails: {
            type: :array,
            items: {
              type: :object,
              properties: {
                address: { type: :string }
              }
            }
          },
        },
        required: ['personal_datum']
      }

      response '201', 'Created' do
        let(:doctor) { { personal_datum: { full_name: 'Dr. Laercio Ferreira' } } }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:doctor) { { personal_datum: { full_name: 'Dr. Laercio Ferreira' } } }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:doctor) { { } }
        run_test!
      end
    end
  end
end