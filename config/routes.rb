Rails.application.routes.draw do
  resources :contrats
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  resources :invoices do
    resources :reviews, only: [:create, :edit, :update]
  end
    resources :reviews, only: [:destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
