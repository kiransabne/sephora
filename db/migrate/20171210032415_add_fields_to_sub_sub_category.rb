class AddFieldsToSubSubCategory < ActiveRecord::Migration[5.1]
  def change
  	add_column :sub_sub_categories, :sub_sub_category_name, :string
  	add_column :sub_sub_categories, :sub_category_id, :int
  end
end
