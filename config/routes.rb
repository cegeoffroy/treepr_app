Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  root to: "pages#home"

  # Models
  resources :users, only: [:show, :index]
  resources :experiences

  # Pages
  get 'host', to: 'pages#host'
  get 'admin', to: 'pages#admin'

end
