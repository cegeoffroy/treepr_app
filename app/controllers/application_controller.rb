class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_admin
    redirect_to '/', alert: 'Not authorized.' unless current_user && access?
  end

  protected

  def access?
    current_user.admin? == true
  end

end
