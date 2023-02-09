class IncidentType < ApplicationRecord
  has_many :incidents, dependent: :destroy
end
