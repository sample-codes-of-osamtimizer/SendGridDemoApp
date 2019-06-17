class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      redirect_to root_path
    else
      flash[:error] = 'Failed to save user.'
      render 'new'
    end
  end

  private
    def user_params
      params(:users).require(:name, :email)
    end

end
