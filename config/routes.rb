Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :petitions, only: [:index, :show, :create, :update] do
        post :confirm_donation
      end
      resources :bloods, only: [:index, :show]
      resources :institutions, only: [:index, :show, :create]
    end
  end
end
