class IncidentsController < ApplicationController
  def index
    @history = Incident.all
    render json: @history
  end

  def show
    @report = Incident.find(params[:id])
    render json: @report, include: ["vitals"]
  end

end
