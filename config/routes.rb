Rails.application.routes.draw do
  get 'experiences/show'
  get 'experiences/index'
  devise_for :users
  root to: "pages#home"

  resources :experiences do
    member do
      get 'overview'
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
    end
  end

end
