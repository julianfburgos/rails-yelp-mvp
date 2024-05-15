class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  # validates :name, inclusion: { in: %w(small medium large),
  #   message: "%{value} is not a valid size" }
  validates :category, inclusion: %w[chinese italian japanese french belgian]
  # validates :address, presence: true
  # validates :category, presence: true
end
