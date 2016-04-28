class PostsController < ApplicationController
  def new
    @post=Post.new

  end
  def create
    @post = Post.new(params[ :title, :content])
    @post.save!

  end

  def index
    @posts=Post.all
  end

end
