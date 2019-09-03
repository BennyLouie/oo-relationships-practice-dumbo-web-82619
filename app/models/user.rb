require 'pry'

class User
    attr_reader(:name, :bank)

    @@all = []

    def initialize(name, bank)
        @name = name
        @bank = bank
        @@all << self
    end

    def self.all
        @@all
    end











end