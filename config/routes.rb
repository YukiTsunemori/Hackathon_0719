Rails.application.routes.draw do
  root "posts#index"
  get "posts/index"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  resource :posts
  # get "/users/sign_out", to: "devise/sessions#destroy"
end
