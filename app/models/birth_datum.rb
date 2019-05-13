# frozen_string_literal: true

class BirthDatum < ApplicationRecord
  belongs_to :personal_datum
  acts_as_paranoid
  has_paper_trail
end
