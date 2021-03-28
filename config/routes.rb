Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/calculation', to: 'pages#calculation'
  post '/calculation', to: 'pages#calculation'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :speak_localities, only: [ :index, :show ]
    end
  end
end
