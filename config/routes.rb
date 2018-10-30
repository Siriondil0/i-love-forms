Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#index'
  get '/new_form', to: 'users#new_form'
  get '/new_form_tag', to: 'users#new_tag'
  get '/new_form_for', to: 'users#new_for'
  post '/new', to: 'users#create'
end
