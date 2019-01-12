class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.belongs_to :appointment, foreign_key: true
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :pacient, foreign_key: true

      t.timestamps
    end
  end
end