class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.belongs_to :appointment
      t.belongs_to :doctor
      t.belongs_to :pacient

      t.timestamps
    end
  end
end
