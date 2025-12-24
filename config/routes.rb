Rails.application.routes.draw do
  root "posts#index"
  get "posts/index"

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  resources :users, only: [:show]
  
  resources :posts do
     resources :replies do
    end
  end
  # get "/users/sign_out", to: "devise/sessions#destroy"
end
