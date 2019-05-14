class AppointmentType
  def self.standard 
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          example: 1
        },
        appointment_type_name: {
          type: :string,
          example: ""
        },
        appointment_type_description: {
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
        appointment_type_name: {
          type: :string,
          example: ""
        },
        appointment_type_description: {
          type: :string,
          example: ""
        }
      }
    }
  end
end