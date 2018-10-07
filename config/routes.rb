Rails.application.routes.draw do
  resources :coupons
  resources :inventories
  resources :transactions
  
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: {sessions: :sessions},
      path_names: {sign_in: :login, sign_up: 'create'}
      
    resource :user, only: [:show, :update, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

