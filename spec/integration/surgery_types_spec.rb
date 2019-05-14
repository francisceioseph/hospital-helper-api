require 'swagger_helper'

require_relative '../typings/surgery_type'

describe 'Surgery Types Profile API' do
  path '/surgery-types' do 
    post 'Creates a new Surgery Type' do
      tags 'Surgery Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :surgery_type, in: :body, schema: {
        type: :object,
        properties: {
          surgery_type: SurgeryType.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:surgery_type) { FactoryBot.create(:surgery_type) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:surgery_type) { FactoryBot.create(:surgery_type) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active surgery types' do
      tags 'Surgery Types'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: SurgeryType.standard
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

  path '/surgery-types/{id}' do
    get 'Retrieves data regarding an surgery type record' do
      tags 'Surgery Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema SurgeryType.standard
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

    patch 'Update some surgery type information' do
      tags 'Surgery Types'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :surgery_type, in: :body, schema: {
        type: :object,
        properties: {
          surgery_type: SurgeryType.for_post
        }
      }

      response '200', 'OK' do
        schema SurgeryType.standard
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

    delete 'Removes some surgery type information' do 
      tags 'Surgery Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema SurgeryType.standard
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