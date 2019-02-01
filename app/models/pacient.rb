# frozen_string_literal: true

class Pacient < Profile
  has_one :family_datum
  has_one :prontuario
  has_many :appointments, inverse_of: :pacient

  accepts_nested_attributes_for :family_datum, allow_destroy: true
end
