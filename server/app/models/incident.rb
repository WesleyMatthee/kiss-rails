class Incident < ApplicationRecord
  has_one :user, foreign_key: "user_id"
  has_one :incident_type, foreign_key: "incident_type_id"
  has_many :casualties, dependent: :destroy
  has_many :vitals, dependent: :destroy
end
