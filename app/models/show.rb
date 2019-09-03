require 'pry'
class Show
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def actors
        actors = self.characters.map do |character|
            character.actor 
        end
        actors.uniq
    end

    def characters
        p = Portrayed.all.select do |portrayal|
            portrayal.screen == self
        end
        p.map do |port|
            port.character
        end
    end

    def self.find_by_name(name)
        self.all.select do |show|
            show.name == name
        end
    end

    def self.find_by_actor(name)
        portrayals = Portrayed.all.select do |port|
            port.screen.class == self
        end
        sp = portrayals.select do |port|
            port.character.actor.name == name
        end
        show = sp.select do |p|
            p.screen.class == self
        end
        found = show.map do |s|
            s.screen
        end
        found.uniq
    end

    def on_the_big_screen
        Movie.all.select do |movie|
            movie.name.downcase == self.name.downcase
        end
    end

    def episodes
        Episode.all.select do |episode|
            episode.show == self
        end
    end
end