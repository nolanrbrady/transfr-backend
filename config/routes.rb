Rails.application.routes.draw do
  resources :inventories
  resources :transactions
  
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: {sessions: :sessions},
      path_names: {sign_in: :login}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
