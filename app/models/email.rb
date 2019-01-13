class Email < ApplicationRecord
  validates :address, presence: true

  belongs_to :profile, required: true
end
