class HikesController < ApplicationController
  def new
    @hikes = Hike.all
  end

  def edit
  end

  def show
  end

  def create
    @hike = Hike.new ({
      name: params[:name],
      location: params[:location],
      distance: params[:distance],
      difficulty: params[:difficulty],
      description: params[:description],
      directions: params[:directions],
      poo_bags_available: params[:poo_bags_available],
      dogs_allowed_off_leash: params[:dogs_allowed_off_leash],
      trash_cans: params[:trash_cans]
      })
    if @hike.save
      redirect_to '/users/index'
    end
  end
end


