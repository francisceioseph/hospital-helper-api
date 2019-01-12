class Pacient < Profile
  has_one :family_datum
  has_one :prontuario
  has_many :appointments
end
