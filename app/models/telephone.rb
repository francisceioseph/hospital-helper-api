# frozen_string_literal: true

class Telephone < ApplicationRecord
  belongs_to :profile, required: true
  acts_as_paranoid
end
