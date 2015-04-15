News::Engine.routes.draw do
  resources :posts
  namespace :admin do
    resources :posts do
    end
  end

end
