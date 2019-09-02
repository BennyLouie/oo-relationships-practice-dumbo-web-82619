require 'pry'

class Listing
    attr_reader(:city)

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        guests = self.trips.map do |trip|
            trip.guest
        end
        guests.uniq
    end

    def trip_count
        self.trips.size
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        count_list = self.all.map do |listing|
            listing.trip_count
        end
        self.all.find do |listing|
            listing.trip_count == count_list.max
        end
    end






end