class ExamType
  def self.standard 
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          example: 1
        },
        exam_type_name: {
          type: :string,
          example: ""
        },
        exam_type_description: {
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
        exam_type_name: {
          type: :string,
          example: ""
        },
        exam_type_description: {
          type: :string,
          example: ""
        }
      }
    }
  end
end