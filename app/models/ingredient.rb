class Ingredient < ApplicationRecord
  validates :name, uniqueness: true

  has_many :measures
end
