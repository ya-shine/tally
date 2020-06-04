Rails.application.routes.draw do
  root "home#index"
  resources :buyers, except: show
end
