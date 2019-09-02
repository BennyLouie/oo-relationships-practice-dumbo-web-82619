require 'pry'

class Ingredient
    attr_reader(:name, :dessert, :bakery, :calorie_count)

    @@all = []

    def initialize(name, dessert, bakery, calorie_count)
        @name = name
        @dessert = dessert
        @bakery = bakery
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def self.uniq_names
        names = self.all.map do |ingredient|
            ingredient.name
        end
        names.uniq
    end

    def self.calories
        calorie_hash = {}
        i = 0
        while i < self.uniq_names.size
            self.all.each do |ingredient|
                if ingredient.name == self.uniq_names[i]
                    calorie_hash[self.uniq_names[i]] = ingredient.calorie_count
                end
            end
            i += 1
        end
        calorie_hash
    end

    def calories
        Ingredient.calories.select do |key, value|
            if key == self.name
                return value
            end
        end
    end

    def self.find_calories(name)
        self.calories.find do |key, value|
            if key == name
                return value
            end
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |ingredient|
            ingredient.name.downcase.include?(name.downcase)
        end
    end





end