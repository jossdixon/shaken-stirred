class Cocktail < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :measures, dependent: destroy
  has_many :ingredients, through: :measures
end
