class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :category
  has_many :review
  has_many :user, through: :review

  validates :name, presence: true
  validates :price, presence: true, numericality: true
end
