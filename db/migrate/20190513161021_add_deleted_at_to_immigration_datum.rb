class AddDeletedAtToImmigrationDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :immigration_data, :deleted_at, :datetime
    add_index :immigration_data, :deleted_at
  end
end
