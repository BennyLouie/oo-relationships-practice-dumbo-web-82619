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

binding.pry
0