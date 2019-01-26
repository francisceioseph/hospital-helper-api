# frozen_string_literal: true

class CreateSurgeryAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :surgery_appointments do |t|
      t.belongs_to :prontuario
      t.belongs_to :doctor
      t.belongs_to :pacient

      t.timestamp :scheduled_to
      t.timestamp :real_end_time
      t.boolean :finished
      t.boolean :canceled

      t.timestamps
    end
  end
end
