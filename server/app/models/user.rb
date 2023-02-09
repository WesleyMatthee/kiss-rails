class User < ApplicationRecord
  has_secure_password
  has_many :incidents, dependent: :destroy
end
