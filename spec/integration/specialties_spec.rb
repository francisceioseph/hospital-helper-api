require 'swagger_helper'

require_relative '../typings/specialty'
require_relative '../typings/specialty'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/specialty'

describe 'Specialties Profile API' do
  path '/specialties' do 
    post 'Creates a new Specialty' do
      tags 'Specialties'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :specialty, in: :body, schema: {
        type: :object,
        properties: {
          specialty: Specialty.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:specialty) { FactoryBot.create(:specialty) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:specialty) { FactoryBot.create(:specialty) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active specialties' do
      tags 'Specialties'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Specialty.standard
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

  path '/specialties/{id}' do
    get 'Retrieves data regarding an specialty record' do
      tags 'Specialties'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Specialty.standard
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

    patch 'Update some specialty information' do
      tags 'Specialties'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :specialty, in: :body, schema: {
        type: :object,
        properties: {
          specialty: Specialty.for_post
        }
      }

      response '200', 'OK' do
        schema type: :object, 
        properties: Specialty.standard[:properties]
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

    delete 'Removes some specialty information' do 
      tags 'Specialties'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Specialty.standard
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