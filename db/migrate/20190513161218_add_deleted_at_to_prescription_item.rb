class AddDeletedAtToPrescriptionItem < ActiveRecord::Migration[5.2]
  def change
    add_column :prescription_items, :deleted_at, :datetime
    add_index :prescription_items, :deleted_at
  end
end
