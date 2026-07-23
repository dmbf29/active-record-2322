require 'faker'

# This is where you can create initial data for your app.
# when?
#   - to start off with some test data
#   - put real information the user isnt giving me (seed movies)

puts 'Cleaning the db...'
Restaurant.destroy_all

puts 'Creating restaurants...'
20.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
  )
  restaurant.save
end
puts "... created #{Restaurant.count} restaurants"
