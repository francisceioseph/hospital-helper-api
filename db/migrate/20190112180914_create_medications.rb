# frozen_string_literal: true

class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :medication_name
      t.belongs_to :prescription_item

      t.timestamps
    end
  end
end
