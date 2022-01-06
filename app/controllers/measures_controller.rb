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
      redirect_to measure_path(@measure)
    else
      render :new
    end
  end

  private

  def measure_params
    params.require(:measure).permit(:name, :comment, :ingredient_id)
  end

end
