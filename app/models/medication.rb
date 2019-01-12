class Medication < ApplicationRecord
  validate :medication_name, presence: true

  belongs_to :prescription_item
end
