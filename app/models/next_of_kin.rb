class NextOfKin < ApplicationRecord
  belongs_to :pacient
  acts_as_paranoid
end
