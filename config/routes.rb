Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'mainpage#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :orders do
    resources :line_products
  end

  resources :categories, only: [:show]

  resources :products do
     resources :messages
     end

      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
