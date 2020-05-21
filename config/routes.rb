Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:new, :create, :show]
  resources :posts, only: [:show, :create, :new, :edit, :update]
  resources :destinations, only: [:show]
  post '/like_post/:id', to: 'posts#increment_like', as: "dreams_favorite"
end
