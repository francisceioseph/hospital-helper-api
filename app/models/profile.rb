class Profile < ApplicationRecord
  validates :profile_type, presence: true

  has_one :personal_datum, optional: false

  has_many :addresses
  has_many :telephones
  has_many :emails

  belongs_to :user

  self.inheritance_column = :profile_type

  class << self
    def profile_types
      %w[Pacient Doctor]
    end
  end
end
