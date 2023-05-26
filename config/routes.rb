Rails.application.routes.draw do
  namespace :api do 
    resources :todos 
		resources :users do
			resources :subscriptions
			resources :todos 
		end
		resources :products
  end
end
