require 'pry'
class Movie
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        p = Portrayed.all.select do |portrayal|
            portrayal.screen == self
        end
        p.map do |port|
            port.character
        end
    end

    def actors
        actors = self.characters.map do |character|
            character.actor 
        end
        actors.uniq
    end

    def self.find_by_name(name)
        self.all.select do |movie|
            movie.name.downcase == name.downcase
        end
    end

    def self.find_by_actor(name)
        portrayals = Portrayed.all.select do |port|
            port.screen.class == self
        end
        sp = portrayals.select do |port|
            port.character.actor.name == name
        end
        movie = sp.select do |p|
            p.screen.class == self
        end
        found = movie.map do |m|
            m.screen
        end
        found.uniq
    end

    def num_actors
        self.actors.size
    end

    def self.most_actors
        actors = self.all.map do |movie|
            movie.num_actors
        end
        self.all.select do |movie|
            movie.num_actors == actors.max
        end
    end
end