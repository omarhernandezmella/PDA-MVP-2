Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root 'personal_informations#edit'
  resources :users do
    resource :personal_information, only: [:show, :edit, :update, :create]  # Singular resource as each user has one personal information
  end
  resources :warm_ups
  resources :personal_informations
  resources :kinesiologist_details
  resources :personal_trainer_details
  resources :trainings

  resources :videos  # Agregar esta línea para los videos

end
