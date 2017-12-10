class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :sub_categories
  has_and_belongs_to_many :sub_sub_categories
end
