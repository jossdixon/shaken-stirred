class MeasuresController < ApplicationController
  def new
    @measure = Measure.new
  end

  def create
    @measure = Measure.new(measure.params)
    if @measure.save
      redirect_to measure_path(@measure)
    else
      render :new
    end
  end
end
