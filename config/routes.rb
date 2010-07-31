Blog::Engine.routes.draw do
  namespace :blog, :path => '', :as => '' do
    resources :posts, :controller => "posts"
    root :to => "posts#index"
  end
end
