class Telephone
  def self.standard
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          example: 1
        },
        number: { type: :string },
        contact_person: { type: :string }
      }
    }
  end
end