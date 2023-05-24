class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, message: 'must belong to the fixed list' }
end
