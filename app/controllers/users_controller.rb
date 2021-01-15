class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:name])
    session[:user_id] = @user.id
    if @user
      redirect_to users_path
    end
  end

  def delete
    reset_session
    redirect_to root_path
  end


end
