# frozen_string_literal: true

class Doctor < Profile
  has_many :specialties
  has_many :appointments

  accepts_nested_attributes_for :specialties
end
