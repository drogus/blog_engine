module Blog
  class PostsController < ActionController::Base
    respond_to :html

    def new
      @post = Post.new
    end

    def index
      @posts = Post.all
    end

    def create
      @post = Post.new(params[:blog_post])

      if @post.save
        redirect_to posts_path
      else
        render :new
      end
    end
  end
end
