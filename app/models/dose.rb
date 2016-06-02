class Dose < ActiveRecord::Base
  validates :description, presence: true 
  validates :description, uniqueness: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient } 
  validates :ingredient, presence: true 
  # 

  belongs_to :cocktail
  belongs_to :ingredient

end
