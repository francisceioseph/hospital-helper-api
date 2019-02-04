class RemoveSurgeryAppointmentIdFromSurgeryTypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :surgery_types, :surgery_appointment_id
  end
end
