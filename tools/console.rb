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

###Lyft Exercise###
p1 = Passenger.new("Annie")
p2 = Passenger.new("Benny")
p3 = Passenger.new("Patty")

driver1 = Driver.new("Carl")
driver2 = Driver.new("Andrew")

ride1 = Ride.new(p1, driver1, 28)
ride2 = Ride.new(p1, driver2, 14)
ride3 = Ride.new(p1, driver1, 43)
ride4 = Ride.new(p2, driver1, 30)
ride5 = Ride.new(p2, driver2, 26)
ride6 = Ride.new(p2, driver2, 62)
ride7 = Ride.new(p3, driver1, 12)
ride8 = Ride.new(p3, driver1, 20)
ride9 = Ride.new(p1, driver2, 11)
ride10 = Ride.new(p1, driver1, 19)

###IMDB Excercise###
movie1 = Movie.new("Fated")
movie2 = Movie.new("Sacred")
movie3 = Movie.new("Family")

show1 = Show.new("Fated")
show2 = Show.new("Avenging")
show3 = Show.new("TVD")

actor1 = Actor.new("Nina")
actor2 = Actor.new("Benny")
actor3 = Actor.new("Paul")
actor4 = Actor.new("Danielle")

char1 = Character.new("Ben", show1, actor2)
char2 = Character.new("Carol", movie1, actor1)
char3 = Character.new("Elena", show3, actor1)
char4 = Character.new("Stephen", movie2, actor3)
char5 = Character.new("Damon", movie3, actor2)
char6 = Character.new("Hope", show2, actor4)
char6 = Character.new("Blake", movie1, actor2)







binding.pry
0