class AddFieldToCategory < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :category_name, :string
  end
end
