class AddDeletedAtToMedication < ActiveRecord::Migration[5.2]
  def change
    add_column :medications, :deleted_at, :datetime
    add_index :medications, :deleted_at
  end
end
