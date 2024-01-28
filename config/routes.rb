Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  unauthenticated do
    root 'pages#home'
  end

  namespace :api do
    namespace :v1 do
      resources :participants, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :events, only: [:index, :show, :create, :update, :destroy]
      resources :event_comments, only: [:index, :show, :create, :update, :destroy]
      resources :event_invitations, only: [:index, :show, :create, :update, :destroy]
      resources :event_organizers, only: [:index, :show, :create, :update, :destroy]
      resources :event_payments, only: [:index, :show, :create, :update, :destroy]
      resources :event_schedules, only: [:index, :show, :create, :update, :destroy]
    end
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
