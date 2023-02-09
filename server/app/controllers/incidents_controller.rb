class IncidentsController < ApplicationController
  def index
    @history = User.all
    render json: @history, include: ["incidents"]
  end

  def show
    @report = Incident.find(params[:id])
    render json: @report, include: ["vitals"]
  end

end
