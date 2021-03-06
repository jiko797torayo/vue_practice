Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :employees, only: [:index, :show]
    end
  end
  root to: 'home#index'
end
