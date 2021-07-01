Rails.application.routes.draw do
  get 'posts/index'
  get 'posts' => 'posts#index'
  get 'users/index'
  get 'users' => 'users#index'

  post 'users' => "users#create"
  post 'posts' => "posts#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
