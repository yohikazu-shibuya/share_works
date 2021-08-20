class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:id])
    @qa = Qa.new
    @qas = @user.qas
  end

end
