# frozen_string_literal: true

# the personal datum model
class PersonalDatum < ApplicationRecord
  validates :full_name, presence: true
  validates :rg, presence: true
  validates :cpf, presence: true
  validates :nis, presence: true
  validates :nationality, presence: true
  validates :skin_color, presence: true
  validates :gender, presence: true

  has_one :birth_datum, required: false
  has_one :immigration_datum

  belongs_to :profile
end
