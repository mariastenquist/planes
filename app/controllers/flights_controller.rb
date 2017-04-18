class FlightsController < ApplicationController


  def index
    @passengers = Passenger.all
  end
end