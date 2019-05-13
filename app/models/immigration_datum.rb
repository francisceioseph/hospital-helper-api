# frozen_string_literal: true

# the immigration datum model
class ImmigrationDatum < ApplicationRecord
  belongs_to :personal_datum
  acts_as_paranoid
  has_paper_trail
end
