require 'swagger_helper'

require_relative '../typings/appointment'

describe 'Appointment Profile API' do
  path '/appointments' do 
    post 'Creates a new Appointment' do
      tags 'Appointment'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :appointment, in: :body, schema: {
        type: :object,
        properties: {
          appointment: Appointment.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:appointment) { FactoryBot.create(:appointment) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:appointment) { FactoryBot.create(:appointment) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active appointments' do
      tags 'Appointment'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Appointment.standard
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

  path '/appointments/{id}' do
    get 'Retrieves data regarding an appointment record' do
      tags 'Appointment'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Appointment.standard
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

    patch 'Update some appointment information' do
      tags 'Appointment'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :appointment, in: :body, schema: {
        type: :object,
        properties: {
          appointment: Appointment.for_post
        }
      }

      response '200', 'OK' do
        schema Appointment.standard
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

    delete 'Removes some appointment information' do 
      tags 'Appointment'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Appointment.standard
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