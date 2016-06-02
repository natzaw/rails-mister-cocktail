class Cocktail < ActiveRecord::Base
	
	validates :name, presence: true
	validates :name, uniqueness: true

	has_many :doses, dependant: :destroy 
	has_many :ingredients, through: :doses



end
