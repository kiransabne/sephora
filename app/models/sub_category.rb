class SubCategory < ApplicationRecord
  has_many :sub_sub_categories
  has_and_belongs_to_many :products
  belongs_to :category
end
