Rails.application.routes.draw do
  root "home#index" 
  
    devise_for :users
	get "users/:id", to: "home#index"
	get "/", to: "home#index" 
	get "users/:id/club", to: "clubs#club", as: "club"

end
