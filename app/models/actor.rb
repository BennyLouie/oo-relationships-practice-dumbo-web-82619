require 'pry'
class Actor
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters_played
        Character.all.select do |character|
            character.actor == self
        end
    end

    def movies
        movie_char = characters_played.select do |character|
            character.screen
        end
        if movie_char.size > 0
            movie_char.map do |character|
                character.screen
            end
        else
            "Sorry, this actor has no movies to show"
        end
    end

    def shows
        show_char = characters_played.select do |character|
            character.screen
        end
        if show_char.size > 0
            show_char.map do |character|
                character.screen
            end
        else
            "Sorry, this actor has no shows to display"
        end
    end


end