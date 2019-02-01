class MenuItem < ApplicationRecord
  validates :code, presence: true
  validates :bread_parent_code, presence: true
  validates :menu_parent_code, presence: true
  validates :route, presence: true
  validates :icon, presence: true
  validates :name, presence: true

  has_many: :profile_menu_items
end
