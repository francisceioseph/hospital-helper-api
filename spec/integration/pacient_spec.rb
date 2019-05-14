require 'swagger_helper'
require_relative '../typings/address'
require_relative '../typings/email'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/telephone'

describe 'Pacients Profile API' do

  path '/pacients' do
    post 'Creates a pacient Profile for a given user' do
      tags 'Pacients'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :pacient, in: :body, schema: {
        type: :object,
        properties: {
          pacient: {
            type: :object,
            properties: {
              personal_datum: PersonalDatum.for_pacient,
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
        let(:pacient) { FactoryBot.create(:pacient) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:pacient) { FactoryBot.create(:pacient) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:pacient) { {} }
        run_test!
      end
    end

    get 'Retrieves a list containing all active pacients' do
      tags 'Pacients'
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
              personal_datum: PersonalDatum.for_pacient,
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

        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end
    end
  end

  path '/pacients/{id}' do 
    get "Retrieve the pacient's profile information" do 
      tags 'Pacients'
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
          personal_datum: PersonalDatum.for_pacient,
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
      end

      response '401', 'Unauthorized' do
        run_test!
      end
    end

    patch "Update some pacient's profile information" do
      tags 'Pacients'
      consumes 'application/json'
      security [Bearer: {}]
      parameter name: :id, :in => :path, :type => :string
      parameter name: :pacient, in: :body, schema: {
        type: :object,
        properties: {
          pacient: {
            type: :object,
            properties: {
              pacient_specialties: { 
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

    delete "Delete a pacient from the database" do
      tags 'Pacients'
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