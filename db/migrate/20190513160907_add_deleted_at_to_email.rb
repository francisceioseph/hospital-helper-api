class AddDeletedAtToEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :deleted_at, :datetime
    add_index :emails, :deleted_at
  end
end
