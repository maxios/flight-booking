Rails.application.routes.draw do
  namespace :api do
    resources :tickets
    resources :flights
    resources :aeroplanes
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    post 'authenticate', to: 'authentication#authenticate'
  end
end
