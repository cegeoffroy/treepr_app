Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :experiences do
    member do
      get 'overview'
      get 'description'
      get 'settings'
      get 'contact'
      get 'photos'
    end
  end

  resources :users, only: [:show]

  get 'users/show'
  get 'experiences/show'
  get 'experiences/index'
  get 'my_experiences', to: 'pages#my_experiences'

  # Static pages
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'
  get 'career', to: 'pages#career'
  get 'credits', to: 'pages#credits'
  get 'faq', to: 'pages#faq'
  get 'host', to: 'pages#host'
  get 'standards', to: 'pages#standards'
  get 'why_hosting', to: 'pages#why_hosting'
  get 'account', to: 'pages#account'

end
