class BirthDatum < ApplicationRecord
  validates :date_of_birth, presence: true
  validates :country_of_birth, presence: true
  validates :state_of_birth, presence: true
  validates :city_of_birth, presence: true

  belongs_to :personal_datum
end
