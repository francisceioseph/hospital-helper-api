# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :house_number
      t.string :zipcode
      t.string :neighborhood
      t.string :city
      t.string :state
      t.belongs_to :profile

      t.timestamps
    end
  end
end
