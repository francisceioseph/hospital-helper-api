class CreateSpeciaties < ActiveRecord::Migration[5.2]
  def change
    create_table :speciaties do |t|
      t.string :specialty_name
      t.belongs_to :profile, foreign_key: true
      t.timestamps
    end
  end
end