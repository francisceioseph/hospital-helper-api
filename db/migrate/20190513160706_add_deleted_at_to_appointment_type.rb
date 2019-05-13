class AddDeletedAtToAppointmentType < ActiveRecord::Migration[5.2]
  def change
    add_column :appointment_types, :deleted_at, :datetime
    add_index :appointment_types, :deleted_at
  end
end
