require 'pry'
class Movie
    attr_reader(:name, :movie, :show)

    @@all = []

    def initialize(name, title, type)
        if type == "film" || type == "movie"
            @name = name
            @movie = title
            @@all << self
            Movie.characters << self
        elsif type == "show" || type == "tv" || type == "tv show"
            @name = name
            @show = title
            @@all << self
        end
    end

    def self.all
        @@all
    end

    def movies
        Movie.all.select do |movie|
            movie.name == self.movie
        end
    end





end