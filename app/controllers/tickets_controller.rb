class TicketsController < ApplicationController
  def index
    # p session[:number_fly] = nil
    # p session[:passenger] = nil
    # p session[:passenger_total] = nil

    @fly_from = "Mexico"
    flights = Flight.all

    fly_to = []
    flights.each do |fly|
      if fly_to.include?(fly.to)
        #
      else
        fly_to << fly.to
      end
    end
    p @fly_to = fly_to


    fly1_day = []
    fly_day = []
    flights.each do |fly|
      if fly1_day.include?(fly.date.strftime('%d-%B-%Y') )
        #
      else
        fly1_day << fly.date.strftime('%d-%B-%Y') 
        fly_day << fly.date
      end
    p @fly_day = fly_day
    p @fly1_day = fly1_day  ####
  end

  end

  def back
    redirect_to tickets_url
  end

  def create
  	p "En CREATE " * 20
p session[:passenger] = 0
p session[:passenger_total] = params[:ticket][:passenger].to_i

    p @ticket = params[:ticket][:passenger]
  	p from_user = params[:ticket][:from]
  	p to_user = params[:ticket][:to]
  	p passenger_user = params[:ticket][:passenger].to_i
p date_user = params[:ticket][:date]
#session[:total_passenger] = passenger_user

  	p "Encontradosssss"
  	p fly_user = Flight.where(from: from_user, to: to_user)
  	
  	@fly_user = []
  	fly_user.each do |fly|
  		p fly.passenger
  		if fly.passenger >= passenger_user && fly.date.strftime('%d-%B-%Y') == date_user
  			@fly_user << fly
  		end
  	end
  end

 

  def booking
    p "Bookingg" * 30

    p @info_fly = params[:id].to_i
    p session[:number_fly] = @info_fly


#creo booking --- last
total_cost = Flight.find(session[:number_fly]).cost * session[:passenger_total]
Booking.create(flight_id: @info_fly, total: total_cost) #pendiente total
    

    p session[:passenger]
    p session[:passenger_total]


    
    
    #p session[:passenger_total] = params[:info].to_i

    p @final_fly = Flight.find(@info_fly)
  end

  def newbooking
    p "NEW booking******" * 20
    p session[:passenger]
    p session[:passenger_total]
    p session[:number_fly]
#p session[:passenger] = 1

    p params
    #p @passenger_total = params[:number].to_i
    #p @passenger = 1
    
    #p @passenger = (1..@passenger).to_a

    
    respond_to do |f|
      f.html { redirect_to ticket_url }
      f.js
    end
  end

  def shopping
    p "En shoppingggg " *20
    p params
    

    # p @valor = 50
    # p "passenger " * 20
    # p @passenger_total = params[:passenger_total].to_i
    # p @passenger = params[:passenger].to_i 
    # p @passenger +=  1
    # p @passenger != @passenger_total
p "aumentando a passenger"
#session[:passenger] += 1
p session[:passenger]
p session[:passenger] != session[:passenger_total]

    ##############respond
  end

  def gral_info
    p "TERMINANDOOOOO" * 10
    p session[:number_fly]
  end
  
end
