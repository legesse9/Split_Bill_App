class User < ApplicationRecord
    has_secure_password
    has_many :trip_participations
    has_many :trips, through: :trip_participations

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
