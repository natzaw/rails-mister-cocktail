class CocktailsController < ApplicationController
  def index
  	@cocktail = Cocktail.all
  end

  def show
  	find_cocktail
  end

  def new
  	@dose = Dose.new
  end

  def create
  	find_cocktail
  	@cocktail.save
  end

  private 

  def find_cocktail 
  	@cocktail = Cocktail.find(params[:id])
  end

  def find_dose 
  	@dose = Dose.find(params[:id])
  end
end
