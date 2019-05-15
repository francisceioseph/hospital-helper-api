class AddReceiptToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :receipt, :string
  end
end
