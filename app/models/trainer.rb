require 'pry'

class Trainer
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select do |client|
            client.trainer == self
        end
    end

    def locations
        joined = Join.all.select do |join|
            join.trainer == self
        end
        joined.map do |join|
            join.location
        end
    end

    def self.num_clients
        self.all.map do |trainer|
            trainer.clients.size
        end
    end

    def self.most_clients
        self.all.find do |trainer|
            trainer.clients.size == self.num_clients.max
        end
    end

end