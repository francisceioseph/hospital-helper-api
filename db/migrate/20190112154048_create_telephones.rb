# frozen_string_literal: true

class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.string :number
      t.string :contact_person
      t.belongs_to :profile

      t.timestamps
    end
  end
end
