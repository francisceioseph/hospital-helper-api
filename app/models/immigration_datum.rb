# frozen_string_literal: true

# the immigration datum model
class ImmigrationDatum < ApplicationRecord
  validates :nationalization_date, presence: true
  validates :oridinance_date, presence: true

  belongs_to :personal_datum
end
