class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def host
  end

  def about

  end

  def blog

  end

  def career

  end

  def why_hosting

  end

  def standards

  end

  def faq

  end

  def account
    @user = current_user
  end

  def my_experiences
    @experiences = current_user.experiences
  end
end
