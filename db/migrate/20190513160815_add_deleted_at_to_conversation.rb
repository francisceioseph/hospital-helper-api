class AddDeletedAtToConversation < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :deleted_at, :datetime
    add_index :conversations, :deleted_at
  end
end
