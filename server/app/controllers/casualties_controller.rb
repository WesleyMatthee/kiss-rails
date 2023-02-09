class CasualtiesController < ApplicationController
  def index
    @casualties = Casualty.all
    render json: @casualties
  end
end
