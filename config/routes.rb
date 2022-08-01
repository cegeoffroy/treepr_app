Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  # Models
  resources :experiences

  # Pages
  get 'host', to: 'pages#host'

end
