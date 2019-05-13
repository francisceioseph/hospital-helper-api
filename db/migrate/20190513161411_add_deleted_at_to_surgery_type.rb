class AddDeletedAtToSurgeryType < ActiveRecord::Migration[5.2]
  def change
    add_column :surgery_types, :deleted_at, :datetime
    add_index :surgery_types, :deleted_at
  end
end
