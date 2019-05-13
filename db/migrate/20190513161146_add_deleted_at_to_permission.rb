class AddDeletedAtToPermission < ActiveRecord::Migration[5.2]
  def change
    add_column :permissions, :deleted_at, :datetime
    add_index :permissions, :deleted_at
  end
end
