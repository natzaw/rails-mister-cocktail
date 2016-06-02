class Dose < ActiveRecord::Base
  validates :description, presence: true, 
  validates :description, uniqueness: true
  validates_associated :cocktail, :ingredient, presence: true 
  validates_uniqueness_of :description, scope: [:cocktail_id, :ingredient_id]

  belongs_to :cocktail
  belongs_to :ingredient

end
