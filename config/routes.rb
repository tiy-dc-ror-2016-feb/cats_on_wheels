Rails.application.routes.draw do
  get 'visits/create'

  get 'login' => "session#new"
  post 'login' => "session#create"
  delete 'logout' => "session#destroy"

  resources :owners do
    resources :pets, shallow: true
  end

  resources :pets do
    resources :visits, shallow: true
  end

  root "owners#index"
end
