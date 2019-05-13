class Role < ApplicationRecord
  has_many :users
  
  has_many :role_permissions
  has_many :permissions, through: :role_permissions

  accepts_nested_attributes_for :role_permissions
  acts_as_paranoid
  has_paper_trail
end
