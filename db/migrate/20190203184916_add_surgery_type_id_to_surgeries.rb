class AddSurgeryTypeIdToSurgeries < ActiveRecord::Migration[5.2]
  def change
    add_reference :surgery_appointments, :surgery_type, foreign_key: true
  end
end
