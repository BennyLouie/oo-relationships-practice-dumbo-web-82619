require 'pry'

class Guest
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        listings = self.trips.map do |trip|
            trip.listing
        end
        listings.uniq
    end
    
    def trip_count
        self.trips.size
    end

    def self.list_of_trip_num
        self.all.map do |guest|
            guest.trip_count
        end
    end

    def self.pro_traveller
        self.all.find do |guest|
            guest.trip_count == self.list_of_trip_num.max
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end
