require 'swagger_helper'

require_relative '../typings/appointment_type'

describe 'Appointment Types Profile API' do
  path '/appointment-types' do 
    post 'Creates a new Appointment Type' do
      tags 'Appointment Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :appointment_type, in: :body, schema: {
        type: :object,
        properties: {
          appointment_type: AppointmentType.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:appointment_type) { FactoryBot.create(:appointment_type) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:appointment_type) { FactoryBot.create(:appointment_type) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active appointment types' do
      tags 'Appointment Types'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: AppointmentType.standard
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

  path '/appointment-types/{id}' do
    get 'Retrieves data regarding an appointment type record' do
      tags 'Appointment Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema AppointmentType.standard
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

    patch 'Update some appointment type information' do
      tags 'Appointment Types'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :appointment_type, in: :body, schema: {
        type: :object,
        properties: {
          appointment_type: AppointmentType.for_post
        }
      }

      response '200', 'OK' do
        schema AppointmentType.standard
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

    delete 'Removes some appointment type information' do 
      tags 'Appointment Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema AppointmentType.standard
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