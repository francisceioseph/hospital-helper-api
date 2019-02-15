class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :sender, class_name: :User, foreign_key: 'user_id'
  
  validates_presence_of :content
    
  mount_uploaders :attachments, AttachmentUploader

  after_create_commit { MessageBroadcastJob.perform_later(self) }
end
