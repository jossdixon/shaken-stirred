class Cocktail < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :measures, dependent: :destroy
  has_many :ingredients, through: :measures
  has_many :comments, dependent: :destroy
  has_one_attached :photo
end
