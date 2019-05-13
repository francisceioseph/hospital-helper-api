class AddDeletedAtToFamilyDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :family_data, :deleted_at, :datetime
    add_index :family_data, :deleted_at
  end
end
