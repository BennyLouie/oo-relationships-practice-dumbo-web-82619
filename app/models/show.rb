require 'pry'
class Show
    attr_reader(:name)
    attr_accessor(:characters)

    @@all = []

    def initialize(name)
        @name = name
        @characters = []
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
        Character.all.select do |char|
            char.screen == self
        end
    end

    def self.find_by_name(name)
        self.all.select do |show|
            show.name == name
        end
    end

    def self.find_by_actor(name)
        characters = Character.all.select do |character|
            character.actor.name == name
        end
        characters.map do |char|
            char.screen
        end
    end


end