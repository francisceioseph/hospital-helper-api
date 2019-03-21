class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :messages, :users

  def messages 
    object.messages || []
  end

  def users
    object.users || []
  end
end
