require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



###Airbnb Excercise###
house1 = Listing.new("NYC")
house2 = Listing.new("Seattle")
house3 = Listing.new("Vegas")
ap1 = Listing.new("L.A.")
ap2 = Listing.new("New Orleans")
ap3 = Listing.new("NYC")

bob = Guest.new("Bob")
alex = Guest.new("Alex")
rachel = Guest.new("Rachel")
tom = Guest.new("Thomas")
mike = Guest.new("Michael")
ed = Guest.new("Edward")
ben = Guest.new("Benny")
carl = Guest.new("Carl")
ben2 = Guest.new("Benny")

trip1 = Trip.new(house1, bob)
trip2 = Trip.new(house1, alex)
trip3 = Trip.new(house3, rachel)
trip4 = Trip.new(house3, tom)
trip5 = Trip.new(ap1, mike)
trip6 = Trip.new(house1, ed)
trip7 = Trip.new(house2, ben)
trip8 = Trip.new(ap2, carl)
trip9 = Trip.new(house1, ben)
trip10 = Trip.new(ap1, ben)

###Bakery Exercise###
b1 = Bakery.new("Benny's Bakery")
b2 = Bakery.new("Best Bakery")

d1 = Dessert.new("Cake")
d2 = Dessert.new("Ice Cream")

i1 = Ingredient.new("Cream", d1, b1, 180)
i2 = Ingredient.new("Ice", d2, b1, 120)
i3 = Ingredient.new("Sugar", d1, b2, 50)
i4 = Ingredient.new("Milk", d2, b1, 120)
i5 = Ingredient.new("Flour", d1, b1, 55)
i6 = Ingredient.new("Sugar", d1, b1, 50)
i7 = Ingredient.new("Chocolate", d1, b1, 200)
i8 = Ingredient.new("Chocolate Sprinkles", d2, b1, 100)




binding.pry
0