# frozen_string_literal: true

class MessagesController < ApplicationController
  def create
    @message = Message.new message_params
    @message.sender = current_user
    @message.attachments = params[:attachments]
    
    if @message.save
      head :ok
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.permit(:conversation_id, :content, :user_id, attachments_params: [:name, :filename, :fileSize])
  end
end
