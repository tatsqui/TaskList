Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  get '/tasks', to: 'tasks#index'
  # get '/', to: '/index.html'

  get '/tasks/:id', to: 'tasks#show'
end
