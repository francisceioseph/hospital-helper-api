class AddDeletedAtToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :deleted_at, :datetime
    add_index :appointments, :deleted_at
  end
end
