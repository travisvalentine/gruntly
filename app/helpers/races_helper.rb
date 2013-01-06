module RacesHelper
  def current_user_is_running?(race)
    race.users.include?(current_user)
  end
end
