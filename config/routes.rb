Gruntly::Application.routes.draw do
  root :to => "users#new"

  namespace :admin do
    resource  :dashboard, :controller => "dashboard", :only => [:show]
    resources :races
  end

  namespace :api do
    namespace :v1 do
      resources :activities
      resources :profiles
      resources :races, only: [:index, :show]
      resources :sessions
      resources :users
    end
  end

  match "/login" => "sessions#new", :as => "login"
  match "/logout" => "sessions#destroy", :as => "logout"

  resources :activities
  resources :profiles, only: [:new, :create, :edit, :update]
  resources :races, only: [:index, :show]
  resources :sessions
  resources :users, only: [:new, :create, :edit, :update, :destroy]
end
