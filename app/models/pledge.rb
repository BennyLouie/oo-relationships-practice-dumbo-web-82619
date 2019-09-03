require 'pry'

class Pledge
    attr_reader(:user, :project, :amount)

    @@all = []

    def initialize(user, project, amount)
        @user = user
        user.bank -= amount
        project.backers << user
        @project = project
        project.current_total += amount
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end
end