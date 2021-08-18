Rails.application.routes.draw do
  resources :restaurants, except: %i[index edit update destroy] do
    resources :reviews, only: %i[new create]
  end
  
  root to: 'restaurants#index'
end
