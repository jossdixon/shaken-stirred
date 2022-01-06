class MeasuresController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @measure = Measure.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @measure = Measure.new(measure_params)
    @measure.cocktail = @cocktail
    if @measure.save
      redirect_to cocktail_path(@measure.cocktail)
    else
      render :new
    end
  end

  private

  def measure_params
    params.require(:measure).permit(:description, :ingredient_id)
  end

end
