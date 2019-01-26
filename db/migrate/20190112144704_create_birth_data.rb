# frozen_string_literal: true

class CreateBirthData < ActiveRecord::Migration[5.2]
  def change
    create_table :birth_data do |t|
      t.date :date_of_birth
      t.string :country_of_birth
      t.string :state_of_birth
      t.string :city_of_birth

      t.belongs_to :personal_datum

      t.timestamps
    end
  end
end
