require 'pry'

class Project
    attr_reader(:owner, :goal)
    attr_accessor(:backers, :current_total)

    @@all = []

    def initialize(owner, goal)
        @owner = owner
        @goal = goal
        @backers = []
        @current_total = 0
        @@all << self
    end

    def self.all
        @@all
    end











end