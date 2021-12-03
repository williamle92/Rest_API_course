Rails.application.routes.draw do
  get '/courses', to: 'courses#index'
  resources :courses, only: %i[:index show]

  #get course by id
  get '/courses/:id', to: 'courses#show'
end
