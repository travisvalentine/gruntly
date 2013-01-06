class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(params[:activity])
    if @activity.save
      @activity.update_attribute(:user_id, current_user.id)
      redirect_to races_path, notice: "Activity created successfully."
    else
      redirect_to races_path, notice: "Something went wrong."
    end
  end
end
