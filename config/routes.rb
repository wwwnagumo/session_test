Rails.application.routes.draw do
  get '/user/sign_up' => 'users#new'
  get '/user/sign_in' => 'sessions#new'
  post '/user/sign_in' => 'sessions#create'
  delete '/user/log_out' => 'sessions#destroy'
  resources :users
  root to: 'books#top'
  get '/home/about' => 'books#home'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
