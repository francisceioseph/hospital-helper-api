class Doctor < Profile
  has_many :specialties
  has_many :appointments
end
