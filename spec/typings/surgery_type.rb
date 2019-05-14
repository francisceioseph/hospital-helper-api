class SurgeryType
  def self.standard 
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          example: 1
        },
        surgery_type_name: {
          type: :string,
          example: ""
        },
        surgery_type_description: {
          type: :string,
          example: ""
        }
      }
    }
  end

  def self.for_post 
    {
      type: :object,
      properties: {
        surgery_type_name: {
          type: :string,
          example: ""
        },
        surgery_type_description: {
          type: :string,
          example: ""
        }
      }
    }
  end
end