class UsersController < ApplicationController
	def create
		p "En CREATEE de USER " * 20
		p session[:number_fly]
    	p session[:passenger] += 1
    	p session[:passenger_total]
    	p session[:passenger] != session[:passenger_total]
    	p params
    	p name = params[:user][:name]
    	p email = params[:user][:email]
		p "Creadoooo"

		
		#@new_user = User.create(name: name, email: email, principal: 0)
		if @new_user = User.find_by(name: name, email: email)
			p "existe"
			@new_user = User.find_by(name: name, email: email)
		else
			p "nuevo"
			@new_user = User.create(name: name, email: email, principal: 0)	
		end

		p "condiciones"
		p @new_booking = Booking.last
		p UserBooking.create(booking_id: @new_booking.id, user_id: @new_user.id)
		p UserFlight.create(user_id: @new_user.id, flight_id: session[:number_fly])

		p "asientos"
		p fly = Flight.find(session[:number_fly])
		passenger_now = fly.passenger - 1
		fly.update(passenger: passenger_now)
		#@new_user = User.last
		#render "tickets/shopping"
		

		####redirect_to shopping_new_url ###Buena redireccion pero regresa html
		#redirect_to controller: 'tickets', action: 'shopping'

		# respond_to do |f|
  #     		f.html { redirect_to users_url }
  #     		f.js { redirect_to :controller => 'tickets', :template => 'shopping'  }
  #   	end

	end

	def final_info
		p "Entrrrroooo" *20

		p @new_booking = Booking.last
		p @info_userbook = UserBooking.where(booking_id: @new_booking.id)
		
	end

	def buy
		p "EN BUY " * 20
		p params
		p @booking = Booking.last

		# if user = User.find_by(name: params[:user][:name], email: params[:user][:email])
		# 	user.update(principal: 1)
		# else
		# 	user = User.create(name: params[:user][:name], email:params[:user][:email], principal: 1)
		# 	UserBooking.create(booking_id: @booking.id, user_id: user.id)
		# end

		#if @user_final = User.find_by(name: params[:user][:name], email: params[:user][:email])
		
		if @user_final = User.find_by(name: params[:user][:name], email: params[:user][:email])
			 UserBooking.find_by(booking_id: @booking.id, user_id: @user_final.id)
			 @user_final.update(principal: 1)
		else
			@user_final = User.create(name: params[:user][:name], email: params[:user][:email], principal: 1)
			UserBooking.create(booking_id: @booking.id, user_id: @user_final.id)
		end 


		@fly = Flight.find(session[:number_fly])
		@info = UserBooking.where(booking_id: @booking.id)
		@passenger = session[:passenger_total]
		
		p session[:number_fly] = nil
    	p session[:passenger] = nil
    	p session[:passenger_total] = nil

	end
end
