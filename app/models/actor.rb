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
            if character.screen.class == Movie
                character.screen
            end
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
            if character.screen.class == Show
                character.screen
            end
        end
        if show_char.size > 0
            show_char.map do |character|
                character.screen
            end
        else
            "Sorry, this actor has no shows to display"
        end
    end

    def character_num
        self.characters_played.size
    end

    def self.num_characters
        self.all.map do |char|
            char.character_num
        end
    end

    def self.most_characters
        self.all.select do |char|
            char.character_num == self.num_characters.max
        end
    end
end