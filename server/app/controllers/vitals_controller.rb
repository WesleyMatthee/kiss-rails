class VitalsController < ApplicationController
  def index
    @vitals = Vital.all
    render json: @vitals
  end
  
end
