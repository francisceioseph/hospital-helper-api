# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :profile, required: true
  acts_as_paranoid
end
