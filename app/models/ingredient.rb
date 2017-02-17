class Ingredient < ApplicationRecord
   # CATEGORIES = ["lemon", "ice", "mint leaves", "vodka", "pineapple juice", "rhum", "milk", "coffee liquor"]

  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  # validates :name, inclusion: { in: CATEGORIES,
  #   message: "%{value} is not included in the list"}
end
