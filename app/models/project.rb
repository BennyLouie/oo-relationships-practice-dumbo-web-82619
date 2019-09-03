require 'pry'

class Project
    attr_reader(:name, :owner, :goal)
    attr_accessor(:backers, :current_total)

    @@all = []

    def initialize(name, owner, goal)
        @name = name
        @owner = owner
        @goal = goal
        @backers = []
        @current_total = 0
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.project == self
        end
    end

    def self.no_pledges
        self.all.select do |project|
            project.backers.size == 0
        end
    end

    def self.above_goal
        self.all.select do |project|
            project.current_total > project.goal
        end
    end

    def num_of_backers
        self.backers.size
    end

    def self.most_backers
        num = self.all.map do |project|
            project.num_of_backers
        end
        self.all.find do |project|
            project.num_of_backers == num.max
        end
    end
end