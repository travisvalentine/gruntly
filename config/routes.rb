Gruntly::Application.routes.draw do
  namespace :admin do
    resource :dashboard, :controller => "dashboard", :only => [:show]
  end

  namespace :api do
    namespace :v1 do
      resources :activities
      resources :profiles
      resources :races
      resources :sessions
      resources :users
    end
  end

  resources :activities
  resources :profiles
  resources :races
  resources :sessions
  resources :users
end
