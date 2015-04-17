News::Engine.routes.draw do
  resources :posts, only: [:index, :show]
  namespace :admin do
    resources :posts do
    end
  end

end
