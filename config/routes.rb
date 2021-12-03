Rails.application.routes.draw do
  get '/courses', to: 'courses#index'
  resources :courses, only: [:index]
end
