class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe
  validates :recipe_id, uniqueness: { scope: :category_id }
  # scope checks what uniqueness is against eg --> recipe id is unique against category
  validates :recipe_id, :category_id, presence: true
  validates :comment, length: { minimum: 6 }
end
