Rails.application.routes.draw do
    root 'pages#index'

    namespace :api do
      namespace :v1 do
       resources :airlines, params: :slug
       resources :reviews, only: [:show, :create, :update, :destroy]
      end
    end

    get '*path', to:'pages#index', via: :all
end
