class AddDeletedAtToBirthDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :birth_data, :deleted_at, :datetime
    add_index :birth_data, :deleted_at
  end
end
