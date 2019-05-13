# frozen_string_literal: true

# the personal datum model
class PersonalDatum < ApplicationRecord
  has_one :birth_datum, required: false, dependent: :destroy
  has_one :immigration_datum, dependent: :destroy

  belongs_to :profile

  accepts_nested_attributes_for :birth_datum
  accepts_nested_attributes_for :immigration_datum
  acts_as_paranoid
end
