class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }

end
