Rails.application.routes.draw do
  root "home#index"
  resources :buyers, except: :show
  resources :products, except: :show
  resources :buyer_managements, only: [:index, :new, :create] do
    collection do
      get :search
    end
  end
end
