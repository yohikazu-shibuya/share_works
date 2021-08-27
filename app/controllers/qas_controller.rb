class QasController < ApplicationController
  def index
    @qas = Qa.all
  end

  def new
    @qa = Qa.new
    @Message = Message.new
  end
  
  def create
    @qa = Qa.create(qa_params)
    if @qa.save
      redirect_to root_path
    else
      render :new
    end
  end

def show
  @qa = Qa.find(params[:id])
  @qas = Qa.where(id: params[:id])
  # @qa = Qa.find_by(userid: current_user.id)
  @message = Message.new
  @messages = @qa.messages
  # @user = User.find(params[:id])
end

  private
  def qa_params
    params.require(:qa).permit(:genre_id, :subject, :question, :answer).merge(user_id: current_user.id)
  end
end
