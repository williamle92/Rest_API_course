Rails.application.routes.draw do
  # get '/courses', to: 'courses#index'
  resources :courses

  #get course by id
  # get '/courses/:id', to: 'courses#show'
end
