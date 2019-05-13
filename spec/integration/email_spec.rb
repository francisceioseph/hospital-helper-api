require 'swagger_helper'

require_relative '../typings/email'
require_relative '../typings/email'
require_relative '../typings/personal_datum'
require_relative '../typings/specialty'
require_relative '../typings/telephone'

describe 'Emails Profile API' do
  path '/emails' do 
    post 'Creates a new Email' do
      tags 'Emails'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :email, in: :body, schema: {
        type: :object,
        properties: {
          email: Email.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:email) { FactoryBot.create(:email) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:email) { FactoryBot.create(:email) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active emails' do
      tags 'Emails'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Email.standard
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

  path '/emails/{id}' do
    get 'Retrieves data regarding an email record' do
      tags 'Emails'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Email.standard
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

    patch 'Update some email information' do
      tags 'Emails'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :email, in: :body, schema: {
        type: :object,
        properties: {
          email: Email.for_post
        }
      }

      response '200', 'OK' do
        schema Email.standard
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

    delete 'Removes some email information' do 
      tags 'Emails'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Email.standard
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