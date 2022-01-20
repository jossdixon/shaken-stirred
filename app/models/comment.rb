class Comment < ApplicationRecord
  belongs_to :cocktail
  validates :content, length: { minimum: 20 }
end
