require 'swagger_helper'
require_relative '../typings/profile'

describe 'The user authentication and registration api' do
  path '/login' do
    post 'Authenticate an existent user' do
      tags 'Authentication'
      consumes 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: { 
                type: :string, 
              }, 
              password: {
                type: :string
              }
            }
          }
        }
      }

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :string },
            email: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string },
            role_id: { type: :string },
            deleted_at: { type: :string },
            profile: Profile.standard,
          }
        run_test!
      end

      response '500', 'Internal Server Error' do
        run_test!
      end
    end
  end

  path '/logout' do
    delete 'Unauthenticate an user' do 
      tags 'Authentication'
      consumes 'application/json'
      security [Bearer: {}] 

      response '204', 'No Content' do
        let(:"Authorization") { "Bearer #{token_for(user)}" }
        run_test!
      end

      response '401', 'Unauthorized' do
        run_test!
      end

      response '500', 'Internal Server Error' do
        run_test!
      end
    end
  end

  path '/signup' do
    post 'Creates a new user' do
      tags 'Authentication'
      consumes 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: { 
                type: :string, 
              }, 
              password: {
                type: :string
              }, 
              profile: Profile.for_post
            }
          }
        }
      }

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :string },
            email: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string },
            role_id: { type: :string },
            deleted_at: { type: :string },
            profile: Profile.standard,
          }
        run_test!
      end

      response '500', 'Internal Server Error' do
        run_test!
      end
    end
  end
end