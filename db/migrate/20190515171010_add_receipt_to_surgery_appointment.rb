class AddReceiptToSurgeryAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :surgery_appointments, :receipt, :string
  end
end
