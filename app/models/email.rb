# frozen_string_literal: true

class Email < ApplicationRecord
  belongs_to :profile, required: true
  acts_as_paranoid
  has_paper_trail
end
