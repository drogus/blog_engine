Blog::Engine.routes.draw do
  resources :posts, :controller => "posts"
  root :to => "posts#index"
end
