Rails.application.routes.draw do
  root to: 'orders#index'

  devise_for :users, controllers: { registrations: 'users' } do
    get 'sign_in', to: 'sessions#new', as: :new_user_session
  end
  
  get '/users/search', to: 'users#autocomplete'
  
  resources :users

  resources :orders
  resources :deliverymen
  resources :companies
  get '/users/finalize/:verification_code', to: 'users#finalize', as: 'finalize'
  patch 'finalize_save/:verification_code', to: 'users#finalize_save', as: 'finalize_save'
  post 'set_current_company', to: 'users#set_current_company'

end
