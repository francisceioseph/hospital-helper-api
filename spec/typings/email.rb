class Email
  def self.standard
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          required: false,
          example: 1, 
        },
        address: { 
          type: :string, 
          required: true
        }
      }
    }
  end
  
  def self.for_post
    {
      type: :object,
      properties: {
        address: { 
          type: :string, 
          required: true
        }
      }
    }
  end
end