class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.create(notice_params)
    if @notice.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def notice_params
    params.require(:notice).permit(:type_qa_id, :subject, :notice)
  end
end
