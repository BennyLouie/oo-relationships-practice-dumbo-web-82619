require 'pry'

class Ride
    attr_reader(:passenger, :driver, :distance)

    @@all = []

    def initialize(passenger, driver, distance)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end














end