class NoticesController < ApplicationController
  def index
    @notices = Notice.order("created_at DESC")
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

  def show
    @notice = Notice.find(params[:id])
  end

  private
  def notice_params
    params.require(:notice).permit(:genre_id, :subject, :notice).merge(user_id: current_user.id)
  end
end
