# Active Record methods that write SQL for us

# Create an instance
restaurant = Restaurant.new(name: 'mos burger')

# update an attribute
restaurant.address = 'Meguro'

# Save the instance in the DB
restaurant.save

# To change an attribute(s) and save at the same time
restaurant.update(address: 'Meguro', rating: 1)

# Create an instance and save at the same time (really just for seeds)
Restaurant.create(name: 'Sukiya', address: 'Meguro', rating: 3)

# Get all restaurants
Restaurant.all

# Get one specific restaurant by the id
Restaurant.find(1)

# Get one specific restaurant by attribute
Restaurant.find_by(name: 'Sukiya')
Restaurant.find_by(address: 'Meguro')

# Get all resturants by a specific attribute
Restaurant.where(address: 'Meguro')

# We can still write SQL for more specific queries
Restaurant.where('rating <= ?', 3)
Restaurant.where('name LIKE ?', ['%tour%'])

# Delete a restaurant
restaurant.destroy

# Delete all the restaurants
Restaurant.destroy_all

# Order
Restaurant.order(rating: :desc)

# Count
Restaurant.count

Restaurant.first
Restaurant.last

Restaurant.where(rating: 1).or(Restaurant.where(name: 'Sukiya'))
Restaurant.where.not(rating: 1)

# Pluck
Restaurant.pluck(:name)
