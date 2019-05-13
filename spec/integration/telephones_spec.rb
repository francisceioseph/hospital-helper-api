require 'swagger_helper'

require_relative '../typings/telephone'
require_relative '../typings/telephone'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/telephone'

describe 'Telephones Profile API' do
  path '/telephones' do 
    post 'Creates a new Telephone' do
      tags 'Telephones'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :telephone, in: :body, schema: {
        type: :object,
        properties: {
          telephone: Telephone.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:telephone) { FactoryBot.create(:telephone) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:telephone) { FactoryBot.create(:telephone) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active telephones' do
      tags 'Telephones'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Telephone.standard
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

  path '/telephones/{id}' do
    get 'Retrieves data regarding an telephone record' do
      tags 'Telephones'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Telephone.standard
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

    patch 'Update some telephone information' do
      tags 'Telephones'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :telephone, in: :body, schema: {
        type: :object,
        properties: {
          telephone: Telephone.for_post
        }
      }

      response '200', 'OK' do
        schema Telephone.standard
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

    delete 'Removes some telephone information' do 
      tags 'Telephones'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Telephone.standard
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