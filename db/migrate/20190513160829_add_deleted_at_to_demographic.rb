class AddDeletedAtToDemographic < ActiveRecord::Migration[5.2]
  def change
    add_column :demographics, :deleted_at, :datetime
    add_index :demographics, :deleted_at
  end
end
