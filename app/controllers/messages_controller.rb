# frozen_string_literal: true

class MessagesController < ApplicationController
  def create
    @message = Message.new message_params
    # @message.sender = current_user
    
    @message.save
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:conversation_id, :content, :user_id)
  end
end
