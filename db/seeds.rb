require 'faker'

#Faker::Date.forward(30)
#Faker::Time.forward(23).strftime("%T")

# #Booking
# @booking1 = Booking.create(num_booking: 101, total: 200.20)
# @booking2 = Booking.create(num_booking: 102, total: 300.20)
# @booking3 = Booking.create(num_booking: 103, total: 500.20)

#Userss
@user1 = User.create(name: "xochitl", email: "xoch@mail.com", principal: 1)
@user2 = User.create(name: "july", email: "jul@mail.com", principal: 0)
@user3 = User.create(name: "mario", email: "mar@mail.com", principal: 0)

# #Flights 2017/06/20-24
# @fly1 = Flight.create(booking_id: @booking1.id, num_flight: 2106, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 25)
# @fly2 = Flight.create(booking_id: @booking2.id, num_flight: 2106, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 1)
# @fly3 = Flight.create(booking_id: @booking3.id, num_flight: 2107, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 3)
# Flight.create(booking_id: @booking1.id, num_flight: 2107, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 2)
# Flight.create(booking_id: @booking2.id, num_flight: 2108, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 4)
# Flight.create(booking_id: @booking3.id, num_flight: 2108, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Monterrey", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 3)

# Flight.create(booking_id: @booking1.id, num_flight: 2106, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 5)
# Flight.create(booking_id: @booking2.id, num_flight: 2106, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 0)
# Flight.create(booking_id: @booking3.id, num_flight: 2107, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 3)
# Flight.create(booking_id: @booking1.id, num_flight: 2107, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 2)
# Flight.create(booking_id: @booking2.id, num_flight: 2108, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 4)
# Flight.create(booking_id: @booking3.id, num_flight: 2108, date: Faker::Date.forward(30), depart: Faker::Time.forward(23).strftime("%T"), from: "Mexico", to: "Leon", duration: Faker::Time.forward(23).strftime("%T"), cost: 1499.00, passenger: 1)




#Flights 2017/06/20-24
@fly1 = Flight.create(num_flight: 2106, date: DateTime.new(2017, 8, 20, 06, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1499, passenger: 5)
@fly2 = Flight.create(num_flight: 2126, date: DateTime.new(2017, 8, 20, 17, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1800, passenger: 2)
@fly3 = Flight.create(num_flight: 2106, date: DateTime.new(2017, 8, 21, 06, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1499, passenger: 10)
Flight.create(num_flight: 2126, date: DateTime.new(2017, 8, 21, 17, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1800, passenger: 8)
Flight.create(num_flight: 2106, date: DateTime.new(2017, 8, 22, 06, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1499, passenger: 0)
Flight.create(num_flight: 2126, date: DateTime.new(2017, 8, 22, 17, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1800, passenger: 2)
Flight.create(num_flight: 2106, date: DateTime.new(2017, 8, 23, 06, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1499, passenger: 6)
Flight.create(num_flight: 2126, date: DateTime.new(2017, 8, 23, 17, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1800, passenger: 6)
Flight.create(num_flight: 2106, date: DateTime.new(2017, 8, 24, 06, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1499, passenger: 3)
Flight.create(num_flight: 2126, date: DateTime.new(2017, 8, 24, 17, 00, 00), from: "Mexico", to: "Monterrey", duration: "1:30:00", cost: 1800, passenger: 2)

Flight.create(num_flight: 2204, date: DateTime.new(2017, 8, 20, 07, 15, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1200, passenger: 1)
Flight.create(num_flight: 2224, date: DateTime.new(2017, 8, 20, 14, 00, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1750, passenger: 5)
Flight.create(num_flight: 2204, date: DateTime.new(2017, 8, 21, 07, 15, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1200, passenger: 2)
Flight.create(num_flight: 2224, date: DateTime.new(2017, 8, 21, 14, 00, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1750, passenger: 3)
Flight.create(num_flight: 2204, date: DateTime.new(2017, 8, 22, 07, 15, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1200, passenger: 0)
Flight.create(num_flight: 2224, date: DateTime.new(2017, 8, 22, 14, 00, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1750, passenger: 2)
Flight.create(num_flight: 2204, date: DateTime.new(2017, 8, 23, 07, 15, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1200, passenger: 5)
Flight.create(num_flight: 2224, date: DateTime.new(2017, 8, 23, 14, 00, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1750, passenger: 1)
Flight.create(num_flight: 2204, date: DateTime.new(2017, 8, 24, 07, 15, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1200, passenger: 6)
Flight.create(num_flight: 2224, date: DateTime.new(2017, 8, 24, 14, 00, 00), from: "Mexico", to: "Guadalajara", duration: "1:15:00", cost: 1750, passenger: 0)

Flight.create(num_flight: 2302, date: DateTime.new(2017, 8, 20, 06, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3500, passenger: 6)
Flight.create(num_flight: 2322, date: DateTime.new(2017, 8, 20, 10, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3200, passenger: 3)
Flight.create(num_flight: 2302, date: DateTime.new(2017, 8, 21, 06, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3500, passenger: 8)
Flight.create(num_flight: 2322, date: DateTime.new(2017, 8, 21, 10, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3200, passenger: 5)
Flight.create(num_flight: 2302, date: DateTime.new(2017, 8, 22, 06, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3500, passenger: 2)
Flight.create(num_flight: 2322, date: DateTime.new(2017, 8, 22, 10, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3200, passenger: 3)
Flight.create(num_flight: 2302, date: DateTime.new(2017, 8, 23, 06, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3500, passenger: 6)
Flight.create(num_flight: 2322, date: DateTime.new(2017, 8, 23, 10, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3200, passenger: 5)
Flight.create(num_flight: 2302, date: DateTime.new(2017, 8, 24, 06, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3500, passenger: 8)
Flight.create(num_flight: 2322, date: DateTime.new(2017, 8, 24, 10, 00, 00), from: "Mexico", to: "Cancun", duration: "1:10:00", cost: 3200, passenger: 5)


# #Booking
# @booking1 = Booking.create(flight_id: @fly1.id, total: 200.20)
# @booking2 = Booking.create(flight_id: @fly2.id, total: 300.20)
# @booking3 = Booking.create(flight_id: @fly3.id, total: 500.20)



# UserBooking.create(booking_id: @booking1.id, user_id: @user1.id)
# UserBooking.create(booking_id: @booking2.id, user_id: @user1.id)
# UserBooking.create(booking_id: @booking3.id, user_id: @user1.id)

# UserFlight.create(user_id: @user1.id, flight_id: @fly1.id)
# UserFlight.create(user_id: @user2.id, flight_id: @fly2.id)
# UserFlight.create(user_id: @user3.id, flight_id: @fly3.id)








