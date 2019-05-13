class PersonalDatum
  def self.for_doctor
    {
      type: :object,
      properties: {
        full_name: { 
          type: :string, 
          required: true,
        },
        social_name: { 
          type: :string,
          required: false
        },
        rg: { 
          type: :string,
          required: false
        },
        cpf: { 
          type: :string,
          required: false
        },
        crm: { 
          type: :string,
          required: false
        },
        nis: { 
          type: :string,
          required: false
        },
        nationality: { 
          type: :string,
          required: false
        },
        skin_color: { 
          type: :string,
          required: false
        },
        gender: { 
          type: :string,
          required: false
        },
        birth_datum: {
          type: :object,
          required: false,
          properties: {
            date_of_birth: { 
              type: :string, 
              required: true
            },
            country_of_birth: { 
              type: :string,
              required: false,
              example: "Brasil"
            },
            state_of_birth: { 
              type: :string,
              required: false,
              example: "Ceará"
            },
            city_of_birth: { 
              type: :string,
              required: false,
              example: "Aquiraz"
            },
            personal_datum_id: { 
              type: :integer,
              required: false,
              example: 1
            }
          }
        }
      }
    }
  end
  
  def self.standard
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          required: true,
          example: 1
        },
        full_name: { 
          type: :string, 
          required: true,
        },
        social_name: { 
          type: :string,
          required: false
        },
        rg: { 
          type: :string,
          required: false
        },
        cpf: { 
          type: :string,
          required: false
        },
        crm: { 
          type: :string,
          required: false
        },
        nis: { 
          type: :string,
          required: false
        },
        nationality: { 
          type: :string,
          required: false
        },
        skin_color: { 
          type: :string,
          required: false
        },
        gender: { 
          type: :string,
          required: false
        },
        birth_datum: {
          type: :object,
          required: false,
          properties: {
            id: {
              type: :integer,
              required: true,
              example: 1
            },
            date_of_birth: { 
              type: :string, 
              required: true
            },
            country_of_birth: { 
              type: :string,
              required: false,
              example: "Brasil"
            },
            state_of_birth: { 
              type: :string,
              required: false,
              example: "Ceará"
            },
            city_of_birth: { 
              type: :string,
              required: false,
              example: "Aquiraz"
            },
            personal_datum_id: { 
              type: :integer,
              required: false,
              example: 1
            }
          }
        }
      }
    }
  end

end
