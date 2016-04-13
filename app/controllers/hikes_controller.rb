class HikesController < ApplicationController
  def new
    @hike = Hike.new
  end

  def edit
    @hike = Hike.find(params[:id])
  end

  def update
    @hike = Hike.find(params[:id])
    @hike.update_attributes(hike_params)
    if @hike.save
      redirect_to myhikes_path
    else
      render :edit
    end
  end

  def show
  end

  def create
    @user = User.find(session[:user_id])
    @hike = @user.hikes.new(hike_params)
    if @hike.save
      redirect_to users_path
  else
    render :new
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
    @hike.destroy
    redirect_to myhikes_path
  end

private

  def hike_params
    params.require(:hike).permit(:name, :location, :distance, :difficulty, :description, :directions, :poo_bags_available, :dogs_allowed_off_leash, :trash_cans, :user_id)
  end

end


