class UsersController < ApplicationController
  def index
    @users = User.all
    @hikes = Hike.all
  end

  def new
  end

  def create
    @user = User.new ({
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/users/index'
    else
      render :new
    end
  end
end
