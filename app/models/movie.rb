require 'pry'
class Movie
    attr_reader(:name)
    attr_writer(:characters)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        @characters = []
        @characters
    end





end