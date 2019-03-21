json.id conversation.id

json.users conversation.users do | user |
  json.id user.id
  json.email user.email

  json.profile do
    json.personal_datum do
      json.full_name user.profile.personal_datum.full_name
    end
  end
end

json.messages conversation.messages do |message|
  json.id                   message.id
  json.content              message.content
  json.conversation_id      message.conversation_id
  json.user_id              message.user_id
  json.participants         message.conversation.users.collect(&:id)
  json.created_at           message.created_at

  if message.attachments.count.positive?
    json.attachments message.attachments do |attachment|
      json.url      attachment.url
      json.filename attachment.file.identifier
    end
  end
end
