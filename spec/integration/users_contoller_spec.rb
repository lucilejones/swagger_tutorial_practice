require 'swagger_helper'

RSpec.describe 'users_contoller', type: :request do
    path '/users' do

        get 'Retrieves all users' do
          tags 'Users'
          produces 'application/json'
    
          response '200', 'successful' do
            schema type: :array,
              items: {
                type: :object,
                properties: {
                  id: { type: :integer },
                  name: { type: :string },
                  email: { type: :string }
                },
                required: ['id', 'name', 'email']
              }
    
            run_test!
          end
        end
    
    end
end
