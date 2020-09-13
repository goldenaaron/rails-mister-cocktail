class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  # for every cocktail, you can only use the ingredient once-under scope-uniqueness
  # a dose belongs to a cocktail- AND a cocktail HAS MANY doses
end
