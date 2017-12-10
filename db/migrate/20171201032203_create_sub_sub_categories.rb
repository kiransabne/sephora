class CreateSubSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_sub_categories do |t|

      t.timestamps
    end
  end
end
