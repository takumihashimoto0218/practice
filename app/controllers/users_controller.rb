class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def logout
    sign_out(current_user)
    redirect_to root_path
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confrimation)
    end
end
