class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = @qas.messages.includes(:user)
    @qa = Qa.find(params[:qa_id])
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    
    if @message.save
      redirect_to root_path
    else
   end
  end

  def show
    @user = User.find(params[:id])
    @message = Message.find_by(user_id: current_user.id)
    @message = Message.new
    @Messages = Message.where(id: params[:id])
  end

  private
  def message_params
    # params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
    params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
  end
end
