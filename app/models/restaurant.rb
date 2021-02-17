class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy


  validates_associated :reviews
  validates :name, :address, :category, presence: true
  #category must belong to fixed list
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category" }
end
