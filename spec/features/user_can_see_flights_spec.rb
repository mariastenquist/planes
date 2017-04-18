require 'rails_helper'

RSpec.feature 'A user can view all flights' do 
  context 'A user is a visitor' do 
    scenario 'and the user can see all flights assigned on x page' do

      passenger1 = Passenger.create(name: 'Amara', ticket_number: '12345' )
      aircraft1 = Aircraft.create(tail_number: 123, weight: 4000, location: 'Barcelona')
      passenger1.flights.create(aircraft_id: aircraft1.id, passenger_id: passenger1.id)      
      
      visit passenger_flights_path(passenger1)

      expect(page).to have_content("name: Amara")
      expect(page).to have_content("ticket_number: 12345")
      expect(page).to have_content("tail_number: 123")
      expect(page).to have_content("weight: 4000")
      expect(page).to have_content("location: Barcelona")
      expect(page).to have_content("aircraft_id: #{aircraft1.id}")

      expect(page).to have_button('See Itinerary')

    end
  end
end