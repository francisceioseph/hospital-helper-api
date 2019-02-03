# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.timestamp :scheduled_to
      t.timestamp :intended_end_time
      t.timestamp :real_end_time
      t.boolean :finished
      t.boolean :canceled
      
      t.belongs_to :doctor
      t.belongs_to :pacient
      t.belongs_to :prontuario
      t.belongs_to :appointment_type
      t.timestamps
    end
  end
end
