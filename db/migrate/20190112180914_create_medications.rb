class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :medication_name
      t.belongs_to :prescription_item, foreign_key: true

      t.timestamps
    end
  end
end
