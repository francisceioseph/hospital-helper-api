class CreatePersonalData < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_data do |t|
      t.string :full_name
      t.string :social_name
      t.string :rg
      t.string :cpf
      t.string :nis
      t.string :nationality
      t.string :skin_color
      t.string :gender

      t.belongs_to :profile

      t.timestamps
    end
  end
end
