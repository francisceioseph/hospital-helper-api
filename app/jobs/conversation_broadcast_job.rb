# frozen_string_literal: true

class ConversationBroadcastJob < ApplicationJob
  queue_as :default

  def perform(conversation)
    serialized_data = ActiveModelSerializers::Adapter::Json
                      .new(
                        ConversationSerializer.new(conversation)
                      )
                      .serializable_hash

    ActionCable.server.broadcast 'conversations_channel', serialized_data
  end
end
