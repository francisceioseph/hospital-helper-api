class PrescriptionItem < ApplicationRecord
  has_one :medication
  belongs_to :prescription
end
