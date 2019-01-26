# frozen_string_literal: true

class Email < ApplicationRecord
  validates :address, presence: true

  belongs_to :profile, required: true
end
