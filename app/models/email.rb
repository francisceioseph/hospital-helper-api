class Email < ApplicationRecord
  validates :address, presence: true
end
