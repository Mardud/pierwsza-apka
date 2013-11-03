Bloog::Application.routes.draw do
  get "user/index"
  root to: "user#index"
  resources :posts, only: [:show, :index] do
    resources :comments
  end
  namespace :admin do
    resources :posts
    root to: 'posts#index'
  end
end
