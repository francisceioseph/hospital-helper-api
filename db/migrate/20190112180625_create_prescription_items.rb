class CreatePrescriptionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :prescription_items do |t|
      t.belongs_to :prescription, foreign_key: true
      t.integer :amount
      t.string :unit
      t.string :description

      t.timestamps
    end
  end
end
