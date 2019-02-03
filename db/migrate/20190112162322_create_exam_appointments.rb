# frozen_string_literal: true

class CreateExamAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_appointments do |t|
      t.timestamp :scheduled_to
      t.boolean :finished
      t.boolean :canceled

      t.belongs_to :exam_type
      t.belongs_to :prontuario
      t.belongs_to :doctor
      t.belongs_to :pacient

      t.timestamps
    end
  end
end
