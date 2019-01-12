class CreateProntuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :prontuarios do |t|
      t.belongs_to :pacient

      t.timestamps
    end
  end
end
