require 'pry'
class Character
    attr_reader(:name, :screen, :actor)

    @@all = []

    def initialize(name, screen, actor)
        @name = name
        @screen = screen
        @actor = actor
        @@all << self
        screen.characters << self  
    end

    def self.all
        @@all
    end

    def movies
        Movie.all.select do |movie|
            movie == self.screen
        end
    end

    def shows
        Show.all.select do |show|
            show == self.screen
        end
    end




end