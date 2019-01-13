class Address < ApplicationRecord
  validates :street_name, presence: true
  validates :house_number, presence: true
  validates :zipcode, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :state, presence: true

  belongs_to :profile, required: true
end
