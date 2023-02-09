class Casualty < ApplicationRecord
  belongs_to :incident, foreign_key: "incident_id"
end
