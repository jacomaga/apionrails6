Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
      resources :products
      resources :tokens, only: [:create]
      resources :orders, only: %i[index show create]
    end
  end  
end
