class CreateImmigrationData < ActiveRecord::Migration[5.2]
  def change
    create_table :immigration_data do |t|
      t.date :nationalization_date
      t.date :oridinance_date

      t.belongs_to :personal_datum

      t.timestamps
    end
  end
end
