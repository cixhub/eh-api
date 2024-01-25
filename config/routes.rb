Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  namespace :api do
    namespace :v1 do
      get 'event_payments/index'
      get 'event_payments/show'
      get 'event_payments/create'
      get 'event_payments/update'
      get 'event_payments/destroy'
      get 'event_organizers/index'
      get 'event_organizers/show'
      get 'event_organizers/create'
      get 'event_organizers/update'
      get 'event_organizers/destroy'
      get 'event_invitations/index'
      get 'event_invitations/show'
      get 'event_invitations/create'
      get 'event_invitations/update'
      get 'event_invitations/destroy'
      get 'event_comments/index'
      get 'event_comments/show'
      get 'event_comments/create'
      get 'event_comments/update'
      get 'event_comments/destroy'
      get 'event_schedules/index'
      get 'event_schedules/show'
      get 'event_schedules/create'
      get 'event_schedules/update'
      get 'event_schedules/destroy'
      resources :participants, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :events, only: [:index, :show, :create, :update, :destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
