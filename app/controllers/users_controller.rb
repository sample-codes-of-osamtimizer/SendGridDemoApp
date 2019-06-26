class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      UserMailer.welcome_email(user).deliver_now
      redirect_to root_path
    else
      flash[:error] = 'Failed to save user.'
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end

end
