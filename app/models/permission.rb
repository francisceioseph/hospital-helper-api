class Permission < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
end
