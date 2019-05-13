# frozen_string_literal: true

class FamilyDatum < ApplicationRecord
  belongs_to :pacient
  acts_as_paranoid
end
