class Incident < ApplicationRecord
  belongs_to :user
  belongs_to :incident_type, foreign_key: "incident_type_id"
  has_many :casualties, dependent: :destroy
  has_many :vitals, dependent: :destroy


end
