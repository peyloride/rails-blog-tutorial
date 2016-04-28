class AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :edit, :update, :destroy]
  def new
    @author=Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save!
  end

  def index
    @authors=Author.all
  end

  def show
  end

  def edit
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end
private
  def author_params
    params.require(:author).permit(:name, :surname)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
