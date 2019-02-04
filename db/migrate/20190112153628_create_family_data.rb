# frozen_string_literal: true

class CreateFamilyData < ActiveRecord::Migration[5.2]
  def change
    create_table :family_data do |t|
      t.string :mother_name
      t.string :father_name
      t.boolean :is_family_head

      t.belongs_to :pacient

      t.timestamps
    end
  end
end
