class DoctorSpecialty < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
  acts_as_paranoid
  has_paper_trail
end
