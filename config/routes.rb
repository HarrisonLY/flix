Rails.application.routes.draw do
    
    root "movies#index"

  resources :users
  get 'signup' => 'users#new'

  resource :session
  get "signin" => "sessions#new"

  resources :movies do
    resources :reviews
  end


end
