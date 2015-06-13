News::Engine.routes.draw do
  resources :posts, only: [:index, :show]
  namespace :admin do
    resources :posts do
      member do
        post 'up_position'
        post 'down_position'
        post 'first_position'
        post 'last_position'
        post 'edit_name'
      end
    end
  end

end
