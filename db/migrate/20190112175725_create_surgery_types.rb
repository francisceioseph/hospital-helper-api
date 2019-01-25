class CreateSurgeryTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :surgery_types do |t|
      t.string :surgery_type_name
      t.string :surgery_type_description

      t.belongs_to :surgery_appointment

      t.timestamps
    end
  end
end
