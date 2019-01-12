class Telephone < ApplicationRecord
  validate :number, presence: true
end
