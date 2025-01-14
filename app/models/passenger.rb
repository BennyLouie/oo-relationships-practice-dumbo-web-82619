require 'pry'

class Passenger
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        drivers = self.rides.map do |ride|
            ride.driver 
        end
        drivers.uniq
    end

    def total_distance
        distances = self.rides.map do |ride|
            ride.distance 
        end
        total = distances.reduce do |sum, distance|
            sum + distance
        end
        total
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end