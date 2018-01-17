Rails.application.routes.draw do
  get 'users/index'

  get 'users/import'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    collection {post :import}
  end

  root to: "users#index"
end
