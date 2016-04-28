class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def new
    @Category=Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save!
  end

  def index
    @categories=Category.all
  end

  def show
  end

  def edit
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end

  def set_category
    @category = Category.find(params[:id])
  end
  end
