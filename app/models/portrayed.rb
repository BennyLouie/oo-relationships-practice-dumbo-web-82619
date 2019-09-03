require 'pry'

class Portrayed
    attr_reader(:character, :screen)

    @@all =[]

    def initialize(character, screen)
        @character = character
        @screen = screen
        @@all << self
    end

    def self.all 
        @@all
    end








end