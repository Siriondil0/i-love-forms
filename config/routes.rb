Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#index'
  get '/new', to: 'users#new'

  post '/new', to: 'users#create'
end
