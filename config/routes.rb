Rails.application.routes.draw do
  namespace :api do 
    resources :todos 
		resources :users
		# resources :users do
		# 	resources :subscriptions
		# 	resources :todos 
		# end
		resources :products
		# resources :subscriptions
  end
end
