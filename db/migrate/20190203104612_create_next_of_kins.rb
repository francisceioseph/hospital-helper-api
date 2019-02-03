class CreateNextOfKins < ActiveRecord::Migration[5.2]
  def change
    create_table :next_of_kins do |t|
      t.string :full_name
      t.string :cpf

      t.belongs_to :pacient

      t.timestamps
    end
  end
end
