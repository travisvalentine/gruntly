Gruntly::Application.routes.draw do
  root :to => "users#new"

  namespace :admin do
    resource  :dashboard, :controller => "dashboard", :only => [:show]
    resources :races
  end

  namespace :api do
    namespace :v1 do
      resources :activities
      resources :races, only: [:index, :show]
      resources :sessions
      resources :users
    end
  end

  match "/login" => "sessions#new", :as => "login"
  match "/logout" => "sessions#destroy", :as => "logout"

  resources :activities
  resources :races, only: [:new, :index, :show, :edit, :update, :destroy]
  resources :race_users, only: [:create, :destroy]
  resources :sessions
  resources :users
end
