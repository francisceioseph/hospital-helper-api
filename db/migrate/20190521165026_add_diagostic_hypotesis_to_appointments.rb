class AddDiagosticHypotesisToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :diagnostic_hypotesis, :text
  end
end
