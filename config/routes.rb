Rails.application.routes.draw do
  # devise_for :institutions
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :petitions, only: [:index, :show, :create, :update, :destroy] do
        post :confirm_donation
      end
      resources :bloods, only: [:index, :show]
      resources :institutions, only: [:index, :show, :create]
      resources :sessions, :only => [:create, :destroy]
    end
  end
end
