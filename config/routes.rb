HapGc::Application.routes.draw do
  get "profiles/show"

  devise_for :users
  resources :pins
  get 'board', to: 'pins#index', as: :board
  root :to => 'pins#index'

  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  get '/:id', to: 'profiles#show'

end
