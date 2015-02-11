Rails.application.routes.draw do
  devise_for :users
 root 'japans#index'

 get 'japans' => 'japans#index'
 get 'japans/new' => 'japans#new'
 post 'japans'    => 'japans#create'
 post 'likes'     => 'japans#add_like'
 get '/users/:id'  => 'users#show'
end