class AddDeletedAtToRolePermission < ActiveRecord::Migration[5.2]
  def change
    add_column :role_permissions, :deleted_at, :datetime
    add_index :role_permissions, :deleted_at
  end
end
