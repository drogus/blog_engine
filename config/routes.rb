Blog::Engine.routes.draw do
  resources :posts, :controller => "blog/posts"
  root :to => "blog/posts#index"
end
