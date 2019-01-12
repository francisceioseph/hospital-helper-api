class Telephone < ApplicationRecord
  validates :number, presence: true
end
