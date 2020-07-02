Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to:'sessions#destroy'
  get 'users/new'
  resources :users
  get '/signup', to:'users#new'
  get '/home', to:'static_pages#home'
  get '/about', to:'static_pages#about'
  get '/contactus' ,to:'static_pages#contactus'
  get '/faq', to:'static_pages#faq'
	root 'application#function'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
