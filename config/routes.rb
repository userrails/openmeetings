TestTokbox::Application.routes.draw do
   devise_for :users

   resources :homes
   resources :videos
   
   root :to => 'homes#index'
end