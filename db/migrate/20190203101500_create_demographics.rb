class CreateDemographics < ActiveRecord::Migration[5.2]
  def change
    create_table :demographics do |t|
      t.string :job_title
      t.string :job_category
      t.string :is_estudying
      t.string :degree
      t.string :sexual_orientation
      t.string :gender_identity
      t.string :has_special_needs
      t.string :special_needs

      t.belongs_to :pacient

      t.timestamps
    end
  end
end
