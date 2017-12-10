class AddFieldToSubCategory < ActiveRecord::Migration[5.1]
  def change
  	add_column :sub_categories, :sub_category_name, :string
  	add_column :sub_categories, :category_id, :int
  end
end
