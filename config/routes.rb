Rails.application.routes.draw do
  resources :pages
  get "/pages/:permalink", to: "pages#permalink", as: "pages_permalink"
  get "monster_senses/index"
  get "monster_senses/show"
  get "monster_actions/index"
  get "monster_actions/show"
  get "senses/index"
  get "senses/show"
  get "monster_images/index"
  get "monster_images/show"
  root to: "home#index"
  resources :monsters, only: [ :index, :show ]
  resources :actions, only: [ :index, :show ]
  resources :senses, only: [ :index, :show ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
