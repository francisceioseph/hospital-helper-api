class Prescription < ApplicationRecord
  belongs_to :appointment
  belongs_to :doctor
  belongs_to :pacient

  has_many :prescription_items
end
