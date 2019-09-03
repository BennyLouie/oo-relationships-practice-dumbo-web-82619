require 'pry'

class Client
    attr_reader(:name)
    attr_accessor(:trainer)

    @@all = []

    def initialize(name, trainer = "None")
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
        self
    end

    def locations
        if self.trainer != "None"
            self.trainer.locations
        else
            "There are no locations to show. Please sign with a trainer for a location."
        end
    end
end