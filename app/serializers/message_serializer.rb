class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :conversation_id, :content, :attachments, :created_at

  def attachments
    object.attachments.map do |attachment| 
      { 
        url: attachment.url,
        filename: attachment.file.identifier 
      }
    end
  end
end
