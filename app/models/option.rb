class Option < ApplicationRecord
  has_many :product, through: "product_option"
end
