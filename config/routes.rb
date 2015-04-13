Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  
  scope '/profile' do
    match ':id', to: 'users#show', as: "profile", via: 'get'
  end
	
	devise_for :users
  root 'categories#index'
end
