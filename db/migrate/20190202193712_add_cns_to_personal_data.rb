class AddCnsToPersonalData < ActiveRecord::Migration[5.2]
  def change
    add_column :personal_data, :cns, :string
  end
end
