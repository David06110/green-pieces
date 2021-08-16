Rails.application.routes.draw do
  get 'spaces/index'
  get 'spaces/show'
  get 'spaces/new'
  get 'spaces/create'
  get 'spaces/edit'
  get 'spaces/update'
  get 'spaces/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
