class Category < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :sub_categories
  has_many :sub_sub_categories, :through => :sub_categories
end
