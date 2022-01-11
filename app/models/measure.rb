class Measure < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, uniqueness: { scope: :ingredient }

  def tidy_up
    ingredient.name.downcase.gsub(/\s+/, '-')
  end
end
