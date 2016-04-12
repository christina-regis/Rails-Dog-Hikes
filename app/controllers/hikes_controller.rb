class HikesController < ApplicationController
  def new
  end

  def edit
    @hike = Hike.find(params[:id])
    if @hike.save
      redirect_to 'myhikes'
    else
      render :edit
    end
  end

  def show
  end

  def create
    @user = User.find(session[:user_id])
    @hike = @user.hikes.new ({
      name: params[:name],
      location: params[:location],
      distance: params[:distance],
      difficulty: params[:difficulty],
      description: params[:description],
      directions: params[:directions],
      poo_bags_available: params[:poo_bags_available],
      dogs_allowed_off_leash: params[:dogs_allowed_off_leash],
      trash_cans: params[:trash_cans],
      })
    if @hike.save
      redirect_to '/users/index'
  else
    render :new
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
    @hike.destroy
    redirect_to 'myhikes'
  end
end


