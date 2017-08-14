class Flight < ApplicationRecord
  #belongs_to :booking
  has_many :bookings
  has_many :user_flights
  has_many :user_bookings
  has_many :users, through: :user_flights
end
