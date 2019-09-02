require 'pry'
class Movie
    attr_reader(:name, :character)

    @@all = []

    def initialize(name, character)
        @name = name
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end







end