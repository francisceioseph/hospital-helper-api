class Specialty < ApplicationRecord
  validates :specialty_name, presence: true

  has_many :doctor_specialties
  has_many :doctors, through: :doctor_specialties
  acts_as_paranoid
end
