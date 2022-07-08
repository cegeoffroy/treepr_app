class UsersController < ApplicationController


  def index
    @users = User.all
    @experiences = Experience.all

  end

  def show
    @user = current_user
  end
end
