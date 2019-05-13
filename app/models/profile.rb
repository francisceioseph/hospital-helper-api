# frozen_string_literal: true

class Profile < ApplicationRecord
  validates :profile_type, presence: true

  has_one :personal_datum, required: false, dependent: :destroy

  has_many :addresses, dependent: :destroy
  has_many :telephones, dependent: :destroy
  has_many :emails, dependent: :destroy

  accepts_nested_attributes_for :personal_datum, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :telephones, allow_destroy: true
  accepts_nested_attributes_for :emails, allow_destroy: true

  belongs_to :user, required: false

  acts_as_paranoid

  self.inheritance_column = :profile_type

  scope :pacients, -> { where(profile_type: 'Pacient') }
  scope :doctors, -> { where(profile_type: 'Doctor') }
  scope :almights, -> { where(profile_type: 'Almight') }
  scope :chatters, -> { where(profile_type: 'Chatter') }
  scope :regulators, -> { where(profile_type: 'Regulator') }

  class << self
    def profile_types
      %w[Pacient Doctor Almight Chatter Regulator]
    end
  end
end
