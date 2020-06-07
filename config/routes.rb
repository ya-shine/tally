Rails.application.routes.draw do
  root "home#index"
  resources :buyers, except: :show
  resources :products, except: :show
end
