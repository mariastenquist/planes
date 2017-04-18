require 'rails_helper'

describe Passenger do
  context 'validations' do
    it 'is invalid without a name' do 
      passenger1 = Passenger.new(ticket_number: '12345')

      expect(passenger1).to_not be_valid
    end
    it 'is invalid without a ticket_number' do
      passenger1 = Passenger.new(name: 'Sam')

      expect(passenger1).to_not be_valid
    end

    it 'is valid if both name and ticket_number exist' do
      passenger1 = Passenger.new(name: 'Sam', ticket_number: 12345)

      expect(passenger1).to be_valid
    end
    it 'is invalid if a ticket_number is not an integer' do
      passenger1 = Passenger.new(name: 'Sam', ticket_number: 'ljkasdfjlksafkl;')
      expect(passenger1).to_not be_valid
    end

  end
  context 'attributes' do
    it 'has an attribute name' do
      passenger1 = Passenger.new
      expect(passenger1).to respond_to :name
    end
    it 'has an attribute ticket_number' do
      passenger1 = Passenger.new
      expect(passenger1).to respond_to :ticket_number
    end
    it 'has an attribute aircrafts' do
      passenger1 = Passenger.new
      expect(passenger1).to respond_to :aircrafts
    end
    it 'has an attribute flights' do
      passenger1 = Passenger.new
      expect(passenger1).to respond_to :flights
    end
  end
  context "da relationships" do
    it 'can have many aircrafts' do 
      passenger1 = Passenger.new
      aircraft1 = Aircraft.new
      aircraft2 = Aircraft.new
      passenger1.aircrafts << aircraft1
      passenger1.aircrafts << aircraft2

      expect(passenger1.aircrafts).to include(aircraft1)
    end
  end
end