# frozen_string_literal: true

class Email < ApplicationRecord
  belongs_to :profile, required: true
  acts_as_paranoid
end
