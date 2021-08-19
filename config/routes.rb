Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :spaces
  resources :bookings, only: %i[destroy new create show index]
  # get 'bookings/new'
  # get 'bookings/show'
  # get 'bookings/index'
  # get 'spaces/index'
  # get 'spaces/show'
  # get 'spaces/new'
  # get 'spaces/create'
  # get 'spaces/edit'
  # get 'spaces/update'
  # get 'spaces/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/landing', to: "pages#landing"
end
