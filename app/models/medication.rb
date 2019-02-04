# frozen_string_literal: true

class Medication < ApplicationRecord
  belongs_to :prescription_item
end
