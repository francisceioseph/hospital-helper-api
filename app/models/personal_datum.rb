# frozen_string_literal: true

# the personal datum model
class PersonalDatum < ApplicationRecord
  has_one :birth_datum, required: false
  has_one :immigration_datum

  belongs_to :profile

  accepts_nested_attributes_for :birth_datum, allow_destroy: true
  accepts_nested_attributes_for :immigration_datum, allow_destroy: true
end
