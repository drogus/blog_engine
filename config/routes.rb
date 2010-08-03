Blog::Engine.routes.draw do
  namespace :blog, :path => nil, :shallow_path => nil do
    resources :posts, :controller => "posts"
    root :to => "posts#index"
  end
end
