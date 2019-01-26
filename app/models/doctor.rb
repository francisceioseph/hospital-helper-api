# frozen_string_literal: true

class Doctor < Profile
  has_many :specialties
  has_many :appointments
end
