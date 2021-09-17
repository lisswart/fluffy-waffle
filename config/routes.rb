Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/me', to: 'users#show'
  delete '/users/:id', to: 'users#destroy'

  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  post '/books', to: 'books#create'
  update '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'
end
