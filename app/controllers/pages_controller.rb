class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :host ]

  def home
  end

  def host
  end
end
