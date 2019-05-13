class AddDeletedAtToTelephone < ActiveRecord::Migration[5.2]
  def change
    add_column :telephones, :deleted_at, :datetime
    add_index :telephones, :deleted_at
  end
end
