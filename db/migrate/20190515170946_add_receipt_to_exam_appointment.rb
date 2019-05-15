class AddReceiptToExamAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :exam_appointments, :receipt, :string
  end
end
