class RaceUsersController < ApplicationController
  def create
    @race = Race.find(params[:race_id])
    @runner = @race.race_users.build(user_id: current_user.id, approved: true)
    if @runner.save
      redirect_to(@race, :notice => 'You are running this race.')
    else
      redirect_to(@race, :notice => 'Something went wrong.')
    end
  end

  def destroy
  end
end
