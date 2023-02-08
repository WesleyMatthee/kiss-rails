class IncidentTypesController < ApplicationController
    def index
        @incident_types = IncidentType.all
        render json: @incident_types
    end

end
