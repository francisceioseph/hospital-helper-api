class DoctorSpecialty < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
  acts_as_paranoid
end
