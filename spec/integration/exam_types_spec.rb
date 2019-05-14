require 'swagger_helper'

require_relative '../typings/exam_type'

describe 'Exam Types Profile API' do
  path '/exam-types' do 
    post 'Creates a new Exam Type' do
      tags 'Exam Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :exam_type, in: :body, schema: {
        type: :object,
        properties: {
          exam_type: ExamType.for_post
        }
      }

      response '201', 'Created' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        let(:exam_type) { FactoryBot.create(:exam_type) }
        run_test!
      end

      response '401', 'Unauthorized' do
        let(:exam_type) { FactoryBot.create(:exam_type) }
        run_test!
      end

      response '500', 'Internal Server Error' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end
    end

    get 'Retrieves a list of all active exam types' do
      tags 'Exam Types'
      consumes 'application/json'
      security [Bearer: {}]

      response '200', 'OK' do
        schema type: :array,
        items: ExamType.standard
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

  path '/exam-types/{id}' do
    get 'Retrieves data regarding an exam type record' do
      tags 'Exam Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema ExamType.standard
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

    patch 'Update some exam type information' do
      tags 'Exam Types'
      consumes 'application/json'
      security [Bearer: {}] 

      parameter name: :id, :in => :path, :type => :string
      parameter name: :exam_type, in: :body, schema: {
        type: :object,
        properties: {
          exam_type: ExamType.for_post
        }
      }

      response '200', 'OK' do
        schema ExamType.standard
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

    delete 'Removes some exam type information' do 
      tags 'Exam Types'
      consumes 'application/json'
      security [Bearer: {}] 
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema ExamType.standard
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