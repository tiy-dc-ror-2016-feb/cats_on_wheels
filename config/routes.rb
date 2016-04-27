Rails.application.routes.draw do
  get 'reports/new'
  post 'reports/create'

  devise_for :users

  get "visits/create"

  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"

  resources :owners do
    resources :pets, shallow: true
    resources :comments, shallow: true
  end

  resources :comments

  resources :pets do
    resources :visits, shallow: true
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root "owners#index"
end
