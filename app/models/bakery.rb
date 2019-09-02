require 'pry'

class Bakery
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery.include?(self)
        end
    end

    def ingredients
        ingredients = []
        self.desserts.each do |dessert|
            dessert.all_ingredients_across.each do |ingredient|
                if ingredient.bakery == self
                    ingredients << ingredient 
                end
            end
        end
        ingredients
    end

    def average_calories
        calorie_list = self.desserts.map do |dessert|
            dessert.calories 
        end
        calorie_total = calorie_list.reduce do |total, calorie|
            total + calorie
        end
        calorie_total / self.desserts.size
    end

    def shopping_list
        self.desserts.map do |dessert|
            dessert.ingredients
        end
    end










end