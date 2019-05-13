class RolePermission < ApplicationRecord
  belongs_to :role
  belongs_to :permission
  acts_as_paranoid
  has_paper_trail
end
