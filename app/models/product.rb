class Product < ApplicationRecord
  has_many :category, through: "product_category"
  has_many :option, through: "product_option"
end
