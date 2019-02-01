class ProfileMenuItem < ApplicationRecord
  belongs_to :profile
  belongs_to :menu_item
end
