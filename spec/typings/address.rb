class Address
  def self.for_post
    {
      type: :object,
      properties: {
        street_name: { 
          type: :string,
          required: true
        },
        house_number: { 
          type: :integer,
          required: true
        },
        zipcode: { 
          type: :string,
          required: true,
          example: "61700-000"
        },
        neighborhood: { 
          type: :string,
          required: true,
          example: ""
        },
        city: { 
          type: :string,
          required: true, 
          example: "Aquiraz"
        },
        state: { 
          type: :strin,
          required: true,
          example: "Ceará"
        }, 
        profile_id: {
          type: :integer,
          required: true
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
          required: false,
          exmaple: 1
        },
        street_name: { 
          type: :string,
          required: true
        },
        house_number: { 
          type: :integer,
          required: true
        },
        zipcode: { 
          type: :string,
          required: true,
          example: "61700-000"
        },
        neighborhood: { 
          type: :string,
          required: true,
          example: ""
        },
        city: { 
          type: :string,
          required: true, 
          example: "Aquiraz"
        },
        state: { 
          type: :strin,
          required: true,
          example: "Ceará"
        }
      }
    }
  end
end