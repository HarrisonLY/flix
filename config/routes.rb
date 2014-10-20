Rails.application.routes.draw do
    
    root "movies#index"
    
  resources :users
  get 'signup' => 'users#new'
  resources :users
  resources :movies do
    resources :reviews
  end
end
