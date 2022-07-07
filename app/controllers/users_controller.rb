class UsersController < ApplicationController
  before_action :authenticate_admin, only: [ :index]

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end
end
