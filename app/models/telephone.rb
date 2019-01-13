class Telephone < ApplicationRecord
  validates :number, presence: true

  belongs_to :profile, required: true
end
