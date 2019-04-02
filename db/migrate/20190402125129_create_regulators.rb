class CreateRegulators < ActiveRecord::Migration[5.2]
  def change
    create_table :regulators do |t|

      t.timestamps
    end
  end
end
