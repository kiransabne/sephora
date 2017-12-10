class AddFieldToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :name, :string
  	add_column :products, :description, :text
  	add_column :products, :colour, :string
  	add_column :products, :price, :int
  end
end
