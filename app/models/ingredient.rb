class Ingredient < ApplicationRecord
  validates :name, uniqueness: true

  has_many :measures
  has_many :cocktails, through: :measures
end
