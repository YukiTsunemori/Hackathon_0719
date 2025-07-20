Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  resources :users, only: [:show, :edit, :update]
  
  root "posts#index"
  get "posts/index"
  resource :posts
  # get "/users/sign_out", to: "devise/sessions#destroy"
end
