class CategoriesController < ApplicationController
  def new
    @products = Product.all
  	@categiry = Category.new
  end

  def create
    @products = Product.all
  	@category = Category.create(category_params)
  	if @category.save
  	  redirect_to categories_path
  	else
  	  render new
  	end
  end

  def index
  	@categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def back_office
    
  end

  private

  def category_params
    params.require(:category).permit(:category_name)
  end

end
