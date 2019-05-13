class AddDeletedAtToPersonalDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :personal_data, :deleted_at, :datetime
    add_index :personal_data, :deleted_at
  end
end
