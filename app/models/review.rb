class Review < ApplicationRecord
  belongs_to :beer
  belongs_to :user

  validates :title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true, numericality: true
end
