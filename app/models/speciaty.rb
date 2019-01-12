class Speciaty < ApplicationRecord
  validates :specialty_name, presence: true

  belongs_to :profile
end
