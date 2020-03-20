Rails.application.routes.draw do
  root to: 'pages#home'

  recources :groups, only: [:index, :show, :new, :create, :update, :edit, :delete]
  resources :activities, only: [:new, :create, :update, :edit, :delete]

  # For Login and Signup Modal
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
