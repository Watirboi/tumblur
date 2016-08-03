Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  root "posts#index"

  # assign route to About page
  get '/about', to: 'pages#about'

  # Step 2 of devise install
  root to: "home#index"
end
