class Email < ApplicationRecord
  validate :address, presence: true
end
