require_relative './personal_datum'

class Profile 
  def self.standard 
    {
      type: :object,
      properties: {
        id: { type: :integer },
        user_id: { type: :integer },
        created_at: { type: :string },
        updated_at: { type: :string },
        deleted_at: { type: :string },
        profile_type: { type: :string },

        personal_datum: PersonalDatum.standard,

        role: {
          type: :object,
          properties: {
            id: { type: :integer },
            role_name: { type: :string },
            role_description: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string },
            role_type: { type: :string },
            deleted_at: { type: :string },
            permissions: {
              type: :array,
              items: {
                type: :object,
                properties: {
                  id: { type: :integer },
                  resource_name: { type: :integer },
                  action_type: { type: :integer },
                  created_at: { type: :integer },
                  updated_at: { type: :integer },
                  deleted_at: { type: :integer }
                }
              }
            }
          }
        }
      }
    }
  end

  def self.for_post 
    {
      type: :object,
      properties: {
        profile_type: { type: :string },
        personal_datum: PersonalDatum.for_post,
      }
    }
  end
end
