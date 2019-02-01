class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :code
      t.string :bread_parent_code
      t.string :menu_parent_code
      t.string :route
      t.string :icon
      t.string :name

      t.timestamps
    end
  end
end
