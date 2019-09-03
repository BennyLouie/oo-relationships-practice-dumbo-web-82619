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

char1 = Character.new("Ben", actor2)
char2 = Character.new("Carol", actor1)
char3 = Character.new("Elena", actor1)
char4 = Character.new("Stephen", actor3)
char5 = Character.new("Damon", actor2)
char6 = Character.new("Hope", actor4)
char7 = Character.new("Blake", actor2)

ep1 = Episode.new(show1)
ep2 = Episode.new(show1)
ep3 = Episode.new(show1)
ep4 = Episode.new(show2)
ep5 = Episode.new(show2)
ep6 = Episode.new(show3)

portrayal1 = Portrayed.new(char1, movie1)
portrayal2 = Portrayed.new(char2, movie1)
portrayal3 = Portrayed.new(char3, movie1)
portrayal4 = Portrayed.new(char4, movie2)
portrayal5 = Portrayed.new(char5, movie2)
portrayal6 = Portrayed.new(char6, movie3)
portrayal7 = Portrayed.new(char7, movie1)
portrayal8 = Portrayed.new(char5, show2)
portrayal9 = Portrayed.new(char5, show2)
portrayal10 = Portrayed.new(char6, show3)
portrayal11 = Portrayed.new(char7, show1)
portrayal12 = Portrayed.new(char1, show2)
portrayal13 = Portrayed.new(char2, show1)

###CrowdFunding Exercise###
user1 = User.new("Benny", 10000000)
user2 = User.new("Kelvin", 7000000)
user3 = User.new("Kenneth", 5000000)
user4 = User.new("Carl", 1500000)
user5 = User.new("Elsie", 2000000)
user6 = User.new("Jing", 2500000)

project1 = Project.new("Benny Charity", user1, 25000)
project2 = Project.new("Benny Fund", user2, 30000)
project3 = Project.new("Healthcare", user3, 25500)

pledge1 = Pledge.new(user3, project1, 1500)
pledge2 = Pledge.new(user4, project2, 1000)
pledge3 = Pledge.new(user3, project2, 2000)
pledge4 = Pledge.new(user4, project2, 10000)
pledge5 = Pledge.new(user5, project2, 4000)
pledge6 = Pledge.new(user6, project2, 500)
pledge7 = Pledge.new(user4, project2, 1800)
pledge8 = Pledge.new(user4, project2, 10000)
pledge9 = Pledge.new(user1, project2, 10000)
pledge10 = Pledge.new(user2, project1, 1000)

###Gym Exercise###
trainer1 = Trainer.new("Carl")
trainer2 = Trainer.new("Andrew")
trainer3 = Trainer.new("Patty")
trainer4 = Trainer.new("Jacob")

client1 = Client.new("Benny", trainer1)
client2 = Client.new("Kevin", trainer1)
client3 = Client.new("Dennis", trainer2)
client4 = Client.new("Annie")
client5 = Client.new("Tiffany", trainer1)
client6 = Client.new("George", trainer4)
client7 = Client.new("Julie", trainer3)

location1 = Location.new("Blink")
location2 = Location.new("Dolphin")
location3 = Location.new("Planet Fitness")
location4 = Location.new("Dumbo Fitness")

join1 = Join.new(trainer1, location1)
join2 = Join.new(trainer1, location2)
join3 = Join.new(trainer1, location4)
join4 = Join.new(trainer2, location3)
join5 = Join.new(trainer3, location1)
join6 = Join.new(trainer4, location1)



binding.pry
0