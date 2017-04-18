class Flight < ApplicationRecord
  belongs_to :passenger
  belongs_to :aircraft
end