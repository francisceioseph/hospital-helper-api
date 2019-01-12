# frozen_string_literal: true

# The user model class with validation
class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true

  has_one :profile, optional: false
end
