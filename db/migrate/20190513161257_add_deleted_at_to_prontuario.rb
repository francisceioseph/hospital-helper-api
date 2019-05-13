class AddDeletedAtToProntuario < ActiveRecord::Migration[5.2]
  def change
    add_column :prontuarios, :deleted_at, :datetime
    add_index :prontuarios, :deleted_at
  end
end
