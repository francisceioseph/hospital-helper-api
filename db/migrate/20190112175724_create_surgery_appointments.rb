class CreateSurgeryAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :surgery_appointments do |t|
      t.belongs_to :prontuario, foreign_key: true
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :pacient, foreign_key: true

      t.timestamp :scheduled_to
      t.timestamp :real_end_time
      t.boolean :finished
      t.boolean :canceled

      t.timestamps
    end
  end
end
