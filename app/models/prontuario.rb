# frozen_string_literal: true

class Prontuario < ApplicationRecord
  has_many :appointments

  belongs_to :pacient
end
