class CategoriesController < ApplicationController
  
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(name: params[:category][:name])
    @category.save
    
    redirect_to @category
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.name = params[:category][:name]
    @category.save
    redirect_to @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.delete
    
    redirect_to categories_path
  end
end
