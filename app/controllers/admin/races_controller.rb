class Admin::RacesController < Admin::AdminController
  def index
    @races = Race.all
  end
end