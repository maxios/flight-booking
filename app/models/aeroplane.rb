class Aeroplane < ApplicationRecord
  has_many :seats
  has_many :flights
end
