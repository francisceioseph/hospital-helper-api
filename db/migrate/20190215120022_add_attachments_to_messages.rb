class AddAttachmentsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :attachments, :json
  end
end
