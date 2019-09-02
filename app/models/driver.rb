require 'pry'

class Driver
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
            ride.driver == self
        end
    end

    def passengers
        passengers = self.rides.map do |ride|
            ride.passenger 
        end
        passengers.uniq
    end

    def self.mileage_cap(distance)
        exceeded = Ride.all.select do |ride|
            ride.distance > distance
        end
        exceeded.map do |ride|
            ride.driver
        end
    end








end