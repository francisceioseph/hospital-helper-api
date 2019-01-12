class CreateAppointmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_types do |t|
      t.string :appointment_type_name
      t.belongs_to :appointment, foreign_key: true

      t.timestamps
    end
  end
end
