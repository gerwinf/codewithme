Rails.application.routes.draw do
  root to: 'pages#home'

  resources :groups, only: [:create]
  resources :activities, only: [:index, :show, :new, :create, :update, :edit, :delete]

  # For Login and Signup Modal
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',

    # For facebook authentication
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get '/privacy', to: 'pages#privacy', as: :privacy
  get '/privacy/facebook', to: 'pages#facebook_privacy', as: :facebook_privacy

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
