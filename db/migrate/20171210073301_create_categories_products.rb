class CreateCategoriesProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_products do |t|
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
