class AddDeletedAtToExamType < ActiveRecord::Migration[5.2]
  def change
    add_column :exam_types, :deleted_at, :datetime
    add_index :exam_types, :deleted_at
  end
end
