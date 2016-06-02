class DosesController < ApplicationController
	before_action :find_cocktails, only: [ :new, :create ]
  def new
  	@dose = Dose.new
  end

  def create
  	@dose = Dose.new(params[:dose])
  	@dose.save
  end

  def destroy
  	find_dose 
  	@dose.destroy
  end

  private 

  def find_cocktail 
  	@cocktail = Cocktail.find(params[:id])
  end 

  def find_dose 
  	@dose = Dose.find(params[:id])
  end

end

