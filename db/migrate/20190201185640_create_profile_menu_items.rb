class CreateProfileMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_menu_items do |t|

      t.belongs_to :profile
      t.belongs_to :menu_item

      t.timestamps
    end
  end
end
