# frozen_string_literal: true

class CreateAppointmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_types do |t|
      t.string :appointment_type_name
      t.string :appointment_type_description

      t.belongs_to :appointment

      t.timestamps
    end
  end
end
