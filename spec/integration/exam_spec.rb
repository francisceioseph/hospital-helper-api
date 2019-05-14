require 'swagger_helper'

require_relative '../typings/exam'

describe 'Exam Profile API' do
  path '/exams' do 
    post 'Creates a new Exam Type' do
      tags 'Exam'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :exam, in: :body, schema: {
        type: :object,
        properties: {
          exam: Exam.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:exam) { FactoryBot.create(:exam) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:exam) { FactoryBot.create(:exam) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active exams' do
      tags 'Exam'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: Exam.standard
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

  path '/exams/{id}' do
    get 'Retrieves data regarding an exam record' do
      tags 'Exam'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Exam.standard
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

    patch 'Update some exam information' do
      tags 'Exam'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :exam, in: :body, schema: {
        type: :object,
        properties: {
          exam: Exam.for_post
        }
      }

      response '200', 'OK' do
        schema Exam.standard
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

    delete 'Removes some exam information' do 
      tags 'Exam'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema Exam.standard
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