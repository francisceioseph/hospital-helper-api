require 'swagger_helper'

require_relative '../typings/surgery'

describe 'Surgery Profile API' do
  path '/surgery' do 
    post 'Creates a new Surgery' do
      tags 'Surgery'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :surgery, in: :body, schema: {
        type: :object,
        properties: {
          surgery: Surgery.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:surgery) { FactoryBot.create(:surgery) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:surgery) { FactoryBot.create(:surgery) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active surgery' do
      tags 'Surgery'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Surgery.standard
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

  path '/surgery/{id}' do
    get 'Retrieves data regarding an surgery record' do
      tags 'Surgery'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Surgery.standard
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

    patch 'Update some surgery information' do
      tags 'Surgery'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :surgery, in: :body, schema: {
        type: :object,
        properties: {
          surgery: Surgery.for_post
        }
      }

      response '200', 'OK' do
        schema Surgery.standard
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

    delete 'Removes some surgery information' do 
      tags 'Surgery'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Surgery.standard
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