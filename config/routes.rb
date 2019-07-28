Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :ams do
      resources :shops, only: %i[index show]
    end

    namespace :fj do
      resources :shops, only: %i[index show]
    end
  end
end
