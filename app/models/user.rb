require 'pry'

class User
    attr_reader(:name)
    attr_accessor(:bank)

    @@all = []

    def initialize(name, bank)
        @name = name
        @bank = bank
        @@all << self
    end

    def self.all
        @@all
    end

    def projects
        projects = Project.all.select do |project|
            project.owner == self
        end
        projects.map do |project|
            project.name
        end
    end

    def backed_projects
        project = Project.all.select do |project|
            project.backers.include?(self)
        end
        project.map do |p|
            p.name
        end
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.user == self
        end
    end

    def create_project(name, goal)
        Project.new(name, self, goal)
    end

    def back_project(project, amount)
        Pledge.new(self, project, amount)
    end

    def self.highest_pledge
        amounts = Pledge.all.map do |pledge|
            pledge.amount
        end
        pledged = Pledge.all.find do |pledge|
            pledge.amount == amounts.max
        end
        pledged.user
    end

    def self.multi_pledger
        self.all.select do |user|
            user.pledges.size > 1
        end
    end

    def self.project_creators
        self.all.select do |user|
            user.projects.size > 0
        end
    end

end