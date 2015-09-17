Rails.application.routes.draw do
  get '/admin' => 'admin/static_pages#dashboard'
  mount News::Engine => '/', as: 'news'
end
