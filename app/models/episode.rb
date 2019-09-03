require 'pry'

class Episode
    attr_reader(:show)

    @@all = []

    def initialize(show)
        @show = show
        @@all << self
    end

    def self.all 
        @@all
    end

    def characters
        self.show.characters
    end

















end