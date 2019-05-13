class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :users

  after_create_commit { ConversationBroadcastJob.perform_later(self) }
  acts_as_paranoid
end
