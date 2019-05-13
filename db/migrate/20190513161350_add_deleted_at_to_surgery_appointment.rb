class AddDeletedAtToSurgeryAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :surgery_appointments, :deleted_at, :datetime
    add_index :surgery_appointments, :deleted_at
  end
end
