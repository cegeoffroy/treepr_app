Rails.application.routes.draw do
  get 'experiences/show'
  get 'experiences/index'
  devise_for :users
  root to: "pages#home"

  resources :experiences

end
