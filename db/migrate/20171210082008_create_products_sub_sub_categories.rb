class CreateProductsSubSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :products_sub_sub_categories do |t|
      t.references :product, foreign_key: true
      t.references :sub_sub_category, foreign_key: true
    end
  end
end
