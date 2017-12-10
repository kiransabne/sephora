class SubCategoriesController < ApplicationController
  
  def new
  	@category = Category.all
  	@sub_category = SubCategory.new
  end

  def create
  	@category = Category.all
  	@sub_category = SubCategory.create(sub_category_params)
  	if @sub_category.save
  	  redirect_to sub_categories_path
  	else
  	  render "sub_categories/new"
  	end
  end

  def index
  	@sub_categories = SubCategory.all
  end

  def show
    @sub_category = SubCategory.find(params[:id])
  end

  private

  def sub_category_params
  	params.require(:sub_category).permit(:sub_category_name, :category_id)
  end
end
