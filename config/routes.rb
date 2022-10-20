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


  scope '/api' do
    scope '/v1' do
      #rotas de autenticação
      post 'authenticate', to: 'api/v1/authentication#authenticate' #autenticação
      
      #rota de criação de usuário
      post 'users', to: 'api/v1/users#create' #criar usuários

      #deliverymen routes
      post 'deliverymen/toggle_online', to: 'api/v1/deliverymen#toggle_online'
      get 'deliverymen/fetch_data', to: 'api/v1/deliverymen#fetch_data'

      #orders
      get 'orders', to: 'api/v1/orders#index'
      post 'orders/:id/accept', to: 'api/v1/orders#accept'
      put 'orders/:id/status', to: 'api/v1/orders#update_status'

    end
  end
end
