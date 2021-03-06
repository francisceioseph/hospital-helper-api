# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :profile_type

      t.belongs_to :user
      t.timestamps
    end
  end
end
