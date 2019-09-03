require 'pry'
class Character
    attr_reader(:name, :actor)

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self 
    end

    def self.all
        @@all
    end

    def movies
        Portrayed.all.select do |portrayal|
            if portrayal.screen.class == Movie
                portrayal.character == self
            end
        end
    end

    def shows
        Portrayed.all.select do |portrayal|
            if portrayal.screen.class == Show
                portrayal.character == self
            end
        end
    end

    def screens
        self.movies + self.shows
    end

    def num_appearances
        self.screens.size
    end

    def self.num_appearances
        self.all.map do |char|
            char.num_appearances
        end
    end

    def self.most_appearances
        self.all.select do |char|
            char.num_appearances == self.num_appearances.max
        end
    end
end