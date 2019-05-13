# frozen_string_literal: true

class Prontuario < ApplicationRecord
  has_many :appointments

  belongs_to :pacient
  acts_as_paranoid
  has_paper_trail
end
