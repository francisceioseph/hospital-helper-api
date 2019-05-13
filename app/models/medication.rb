# frozen_string_literal: true

class Medication < ApplicationRecord
  belongs_to :prescription_item
  acts_as_paranoid
  has_paper_trail
end
