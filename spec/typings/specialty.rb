class Specialty
  def self.for_doctor
    {
      type: :object,
      properties: {
        id: { 
          type: :integer,
          example: 1,
        }
      },
    }
  end

  def self.for_post
    {
      type: :object,
      properties: {
        specialty_name: {
          type: :string,
          example: ""
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
          example: 1
        }, 
        specialty_name: {
          type: :string,
          example: ""
        }
      }
    }
  end
end