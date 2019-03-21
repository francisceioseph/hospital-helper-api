class ConversationsController < ApplicationController
  def index
    @users = User.where.not(role_id: 1)
    @conversations = current_user.conversations
  end

  def create
    receiver = User.find conversation_params[:receiver_id]

    conversation = Conversation.new
    conversation.users << current_user
    conversation.users << receiver

    if conversation.save
      render json: conversation.to_json({ include: [
        :messages, 
        users: { include: { profile: { methods: :profile_type, include: :personal_datum }}}
        ]
      })
    else
      render json: conversation.errors
    end
  end

  def users
    @users = User.all
  end

  private

  def conversation_params
    params.require(:conversation).permit(:receiver_id)
  end
end
