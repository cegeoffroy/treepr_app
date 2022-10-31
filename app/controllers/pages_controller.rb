class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def host
  end

  def my_experiences
    @experiences = current_user.experiences
  end
end
