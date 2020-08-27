Rails.application.routes.draw do
  get "/dogs/order/:direction", to: "dogs#index", as: "order"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
