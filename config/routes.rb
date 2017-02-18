Rails.application.routes.draw do
  root 'message#index'
  resources :test_ms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
