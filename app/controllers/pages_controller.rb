class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :host ]
  before_action :authenticate_admin, only: [:admin]

  def home
  end

  def host
  end

  def admin
    @users = User.all
    @experiences = Experience.all
  end
end
