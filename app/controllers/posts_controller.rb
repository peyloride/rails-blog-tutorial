class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
  def new
    @post=Post.new

  end
  def create
    @post = Post.new(params[ :title, :content])
    @post.save!
    redirect_to posts_path
  end

  def index
    @posts=Post.all
  end

  def show
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def update
  @post = Post.new(post_params)
    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
  end
