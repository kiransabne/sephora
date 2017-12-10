class ProductsController < ApplicationController
  def new
  	@categories = Category.all
  	@sub_categories = SubCategory.all
  	@sub_sub_categories = SubSubCategory.all
  	@product = Product.new
  end

  def create
  	@product = Product.create(product_params)
  	#@categories = Category.where(:id => product_params[:])
  	if @product.save
  	  redirect_to categories_path
  	else
  	  render "products/new"
  	end
  end

  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def catalog
    @categories = Category.all.select{|c| c.products.present?}
    @sub_categories = SubCategory.all.select{|c| c.products.present?}
    @sub_sub_categories = SubSubCategory.all.select{|c| c.products.present?}
  	if params[:category_id].present?
  	  @products = category_products(params[:category_id])
  	elsif params[:sub_category_id].present?
  	  @products = sub_category_products(params[:sub_category_id])
  	elsif params[:sub_sub_category].present?
  	  @products = sub_sub_category_products(params[:sub_sub_category_id])
    else
      @products = Product.all
  	end
  	  	
  end

  def catalog_index
    @products = Product.all
  end


  private

  def category_products(id)
  	category = Category.find(id)
  	return category.products
  end

  def sub_category_products(id)
  	sub_category = SubCategory.find(id)
  	return sub_category.products
  end

  def sub_sub_category_products(id)
  	sub_sub_category = SubSubCategory.find(id)
  	return sub_sub_category.products
  end

  def product_params
  	params.require(:product).permit(:name, :description, :colour, :price, :category_ids => [], :sub_category_ids => [], :sub_sub_category_ids => [])
  end

end
