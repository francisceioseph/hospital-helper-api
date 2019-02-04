class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|

      t.string :resource_name
      t.string :action_type

      t.timestamps
    end
  end
end
