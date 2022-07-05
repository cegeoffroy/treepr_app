Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  # Pages
  get 'host', to: 'pages#host'

end
