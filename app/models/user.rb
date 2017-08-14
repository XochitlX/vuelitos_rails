class User < ApplicationRecord
	#validates :name, uniqueness: true
	#validates :email, uniqueness: true

	has_many :user_flights
	has_many :user_bookings
	has_many :flights, through: :user_flights
	has_many :bookings, through: :user_bookings
end
