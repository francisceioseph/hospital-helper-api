class AddDeletedAtToExamAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :exam_appointments, :deleted_at, :datetime
    add_index :exam_appointments, :deleted_at
  end
end
