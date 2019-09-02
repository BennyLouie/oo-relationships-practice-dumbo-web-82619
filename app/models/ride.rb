require 'pry'

class Ride
    attr_reader(:passenger, :driver, :distance)

    @@all = []

    def initialize(passenger, driver, distance)
        if distance.class == Float
            @passenger = passenger
            @driver = driver
            @distance = distance
            @@all << self
        elsif distance.class == Integer
            @passenger = passenger
            @driver = driver
            @distance = distance.to_f
            @@all << self
        end
    end

    def self.all
        @@all
    end

    def self.distances
        self.all.map do |ride|
            ride.distance
        end
    end

    def self.average_distance
        total = self.distances.reduce do |sum, distance|
            sum + distance
        end

        total / self.all.size
    end
end