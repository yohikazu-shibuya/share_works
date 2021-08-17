class MessagesController < ApplicationController
  def index
  end

  def create
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
  end
end
