class CreateSurgeryTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :surgery_types do |t|
      t.string :surgery_type_name
      t.belongs_to :surgery_appointment, foreign_key: true

      t.timestamps
    end
  end
end
