class IncidentController < ApplicationController
    def index
        @incident = Incident.all
        render json: @incident
    end
end
