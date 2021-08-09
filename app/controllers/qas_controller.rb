class QasController < ApplicationController
  def index
    @qas = Qa.all
  end

  def new
    @qa = Qa.new
  end
  
  def create
    @qa = Qa.create(qa_params)
    if @qa.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def qa_params
    params.require(:qa).permit(:type_qa, :question, :answer)

  end
end
