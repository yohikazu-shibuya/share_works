class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = @qas.messages.includes(:user)
    @qa = Qa.find(params[:qa_id])
  end

  # def new
  #   @qa = Qa.new
  #   @message = Message.new
  # end

  def create
    # @qa = Qa.find_by(id: params[:qa_id])
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.save
    redirect_to root_path
  end


    # @qa = Qa.find_by(id: params[:qa_id])
    # @message = @Qa.message.new(message_params)
    # @message.user_id = current_user.id

    # @message = Message.new(message_params)
    
    # if @message.save
    #   redirect_to qa_path(qa.id)
    # else
    #   redirect_to root_path
    # end

  private
  def message_params
    # params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
    params.require(:message).permit(:subject, :message).merge(user_id: current_user.id, qa_id: params[:qa_id])
  end
end
