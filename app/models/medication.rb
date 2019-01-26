# frozen_string_literal: true

class Medication < ApplicationRecord
  validates :medication_name, presence: true

  belongs_to :prescription_item
end
