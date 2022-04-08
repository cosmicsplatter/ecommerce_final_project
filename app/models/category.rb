class Category < ApplicationRecord
  has_many :beer

  validates :name, presence: true
end
