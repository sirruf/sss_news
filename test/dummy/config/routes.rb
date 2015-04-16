Rails.application.routes.draw do

  mount News::Engine => '/', as: 'news'
end
