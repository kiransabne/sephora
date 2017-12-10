class SubSubCategoriesController < ApplicationController
  def new
  	@category = Category.all
  	@sub_category = SubCategory.all
  	@sub_sub_category = SubSubCategory.new
  end

  def create
  	@sub_category = SubCategory.all
  	@sub_sub_category = SubSubCategory.create(sub_sub_category_params)
  	if @sub_sub_category.save
  	  redirect_to sub_sub_categories_path
  	else
  	  render "sub_sub_categories/new"
  	end
  end

  def index
  	@sub_sub_categories = SubSubCategory.all
  end

  private

  def sub_sub_category_params
  	params.require(:sub_sub_category).permit(:sub_sub_category_name, :sub_category_id)
  end
end
