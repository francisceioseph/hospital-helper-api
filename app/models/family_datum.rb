# frozen_string_literal: true

class FamilyDatum < ApplicationRecord
  belongs_to :pacient
  acts_as_paranoid
  has_paper_trail
end
