class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # app/controllers/posts_controller.rb
  def create
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.save
    redirect_to posts_path(@post)
  end
end
