class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = @qas.messages.includes(:user)
  end

  def create
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
  end
end
