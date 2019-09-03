require 'pry'

class Location
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trainers
        joined = Join.all.select do |join|
            join.location == self
        end
        joined.map do |join|
            join.trainer
        end
    end

    def clients
        clients = []
        self.trainers.map do |trainer|
            trainer.clients.each do |client|
                clients << client
            end
        end
        clients
    end

    def client_num
        self.clients.size
    end

    def self.client_nums
        self.all.map do |location|
            location.client_num
        end
    end

    def self.least_clients
        self.all.find do |location|
            location.client_num == self.client_nums.min
        end
    end
end