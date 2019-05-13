require 'swagger_helper'
require_relative '../typings/address'
require_relative '../typings/email'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/telephone'

describe 'Doctors Profile API' do

  path '/doctors' do
    post 'Creates a Doctor Profile for a given user' do
      tags 'Doctors'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          doctor: {
            type: :object,
            properties: {
              doctor_specialties: { 
                type: :array,
                example: [],
                items: Specialty.for_doctor
              },
              personal_datum: PersonalDatum.for_doctor,
              addresses: {
                type: :array,
                example: [],
                items: Address.standard
              },
              telephones: {
                type: :array,
                example: [],
                items: Telephone.standard
              },
              emails: {
                type: :array,
                example: [],
                items: Email.standard
              }
            }
          }
        },
        required: ['personal_datum']
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:doctor) { { personal_datum: { full_name: 'Dr. Laercio Ferreira' } } }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:doctor) { { personal_datum: { full_name: 'Dr. Laercio Ferreira' } } }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:doctor) { {} }
        run_test!
      end
    end

    get 'Retrieves a list containing all active doctors' do
      tags 'Doctors'
      consumes 'application/json'
      security [Bearer: {}]
      response '200', 'OK' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { 
                type: :integer
              },
              specialties: {
                type: :array,
                items: Specialty.standard
              }, 
              personal_datum: PersonalDatum.for_doctor
            }
          }

        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end
    end
  end

  path '/doctors/{id}' do 
    get "Retrieve the doctor's profile information" do 
      tags 'Doctors'
      consumes 'application/json'
      security [Bearer: {}]
      parameter name: :id, :in => :path, :type => :integer

      response '200', 'OK' do
        schema type: :object, 
        properties: {
          id: { 
            type: :integer
          },
          specialties: {
            type: :array,
            items: Specialty.standard
          }, 
          personal_datum: PersonalDatum.for_doctor
        }
      end

      response '401', 'Unauthorized' do
        run_test!
      end
    end

    patch "Update some doctor's profile information" do
      tags 'Doctors'
      consumes 'application/json'
      security [Bearer: {}]
      parameter name: :id, :in => :path, :type => :string
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          doctor: {
            type: :object,
            properties: {
              doctor_specialties: { 
                type: :array,
                example: [],
                items: Specialty.standard
              },
              personal_datum: PersonalDatum.standard,
              addresses: {
                type: :array,
                example: [],
                items: Address.standard
              },
              telephones: {
                type: :array,
                example: [],
                items: Telephone.standard
              },
              emails: {
                type: :array,
                example: [],
                items: Email.standard
              }
            }
          }
        },
        required: ['personal_datum']
      }

      response '401', 'Unauthorized' do
        run_test!
      end
    end

    delete "Delete a doctor from the database" do
      tags 'Doctors'
      consumes 'application/json'
      security [Bearer: {}]
      parameter name: :id, :in => :path, :type => :integer

      response '204', 'No Content' do
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end
    end
  end
end