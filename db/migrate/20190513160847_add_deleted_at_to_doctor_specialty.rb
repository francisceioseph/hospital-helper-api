class AddDeletedAtToDoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
    add_column :doctor_specialties, :deleted_at, :datetime
    add_index :doctor_specialties, :deleted_at
  end
end
