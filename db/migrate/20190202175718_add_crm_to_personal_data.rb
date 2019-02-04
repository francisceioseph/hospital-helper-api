class AddCrmToPersonalData < ActiveRecord::Migration[5.2]
  def change
    add_column :personal_data, :crm, :string
  end
end
