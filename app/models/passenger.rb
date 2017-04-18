class Passenger < ApplicationRecord
  has_many :flights
  has_many :aircrafts, through: :flights

  validates :name, presence: true
  validates :ticket_number, { presence: true, numericality: true }
  #only_integer
end