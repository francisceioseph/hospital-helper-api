class Appointment
  def self.standard 
    {
      type: :object,
      properties: {
        id: {
          type: :integer,
          example: 1
        },
        scheduled_to: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        intended_end_time: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        real_end_time: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        finished: {
          type: :boolean
        },
        canceled: {
          type: :boolean
        },
        doctor_id: {
          type: :integer,
          example: 1
        },
        pacient_id: {
          type: :integer,
          example: 1
        },
        appointment_type_id: {
          type: :integer,
          example: 1
        },
      }
    }
  end

  def self.for_post 
    {
      type: :object,
      properties: {
        scheduled_to: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        intended_end_time: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        real_end_time: { 
          type: :string, 
          example: '2019-05-10T18:23:42.000Z'
        },
        finished: {
          type: :boolean
        },
        canceled: {
          type: :boolean
        },
        doctor_id: {
          type: :integer,
          example: 1
        },
        pacient_id: {
          type: :integer,
          example: 1
        },
        appointment_type_id: {
          type: :integer,
          example: 1
        },
      }
    }
  end
end