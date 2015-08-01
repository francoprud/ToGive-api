Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :petitions, only: [:index, :show, :create]
    end
  end
end
