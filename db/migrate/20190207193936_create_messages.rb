class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :conversation
      t.belongs_to :user, foreign_key: 'sender_id'
      t.string :content

      t.timestamps
    end
  end
end
