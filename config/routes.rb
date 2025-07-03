Rails.application.routes.draw do
  get "pages/test_bootstrap"
  get "test_bootstrap", to: "pages#test_bootstrap"
end
