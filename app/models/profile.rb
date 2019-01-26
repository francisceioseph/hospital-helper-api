# frozen_string_literal: true

class Profile < ApplicationRecord
  validates :profile_type, presence: true

  has_one :personal_datum, required: false

  has_many :addresses
  has_many :telephones
  has_many :emails

  accepts_nested_attributes_for :personal_datum, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :telephones, allow_destroy: true
  accepts_nested_attributes_for :emails, allow_destroy: true

  belongs_to :user, required: false

  self.inheritance_column = :profile_type

  scope :pacients, -> { where(profile_type: 'Pacient') }
  scope :doctors, -> { where(profile_type: 'Doctor') }

  class << self
    def profile_types
      %w[Pacient Doctor]
    end
  end
end
