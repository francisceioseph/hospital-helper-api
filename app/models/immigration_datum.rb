# frozen_string_literal: true

# the immigration datum model
class ImmigrationDatum < ApplicationRecord
  belongs_to :personal_datum
end
