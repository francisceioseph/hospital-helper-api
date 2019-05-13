require 'swagger_helper'

require_relative '../typings/address'
require_relative '../typings/email'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/telephone'

describe 'Addresses Profile API' do
  path '/addresses' do 
    post 'Creates a new Address' do
      tags 'Addresses'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :address, in: :body, schema: {
        type: :object,
        properties: {
          address: Address.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:address) { FactoryBot.create(:address) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:address) { FactoryBot.create(:address) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active addresses' do
      tags 'Addresses'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Address.standard
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end
  end

  path '/addresses/{id}' do
    get 'Retrieves data regarding an address record' do
      tags 'Addresses'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Address.standard
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    patch 'Update some address information' do
      tags 'Addresses'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :address, in: :body, schema: {
        type: :object,
        properties: {
          address: Address.for_post
        }
      }

      response '200', 'OK' do
        schema Address.standard
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    delete 'Removes some address information' do 
      tags 'Addresses'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Address.standard
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end
  end
end