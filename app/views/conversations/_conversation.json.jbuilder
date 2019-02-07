json.id conversation.id

json.messages conversation.messages do | message |
  json.room_id      conversation.id
  json.content      message.content
  json.sender       message.sender
  json.participants message.conversation.users.collect(&:id)
end
