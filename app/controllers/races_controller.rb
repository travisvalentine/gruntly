class RacesController < ApplicationController

  def new
    @race = Race.new
  end

  def create
    @race = Race.create(params[:race])
    if @race.save
      redirect_to race_path (@race)
    end
  end

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])
    if @race.update_attributes(params[:race])
      redirect_to race_path(@race)
    else
      render 'edit'
    end
  end

  def destroy
    @race = Race.find(params[:id])
    if @race.destroy
      redirect_to races_path
    end
  end

end
