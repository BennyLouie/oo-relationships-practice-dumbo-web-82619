require 'pry'

class Dessert
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        ingredients = Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
        names = ingredients.map do |ingredient|
            ingredient.name
        end
        names.uniq
    end

    def all_ingredients_across
        ingredients = Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
        ingredients.uniq
    end

    def bakery
        bakeries = self.all_ingredients_across.map do |ingredient|
            ingredient.bakery
        end
        bakeries.uniq
    end

    def calories
        calories = self.ingredients.map do |ingredient|
            Ingredient.find_calories(ingredient)
        end
        calories.reduce do |total, calorie|
            total + calorie
        end
    end








end