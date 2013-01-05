class UsersController < ApplicationController
  before_filter :check_presence_of_current_user, only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to races_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      redirect_to root_path
    else
      redirect_to user_path(current_user)
    end
  end

end
