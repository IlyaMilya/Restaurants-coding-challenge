# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all

puts "Creating restaurants..."
shack = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
bistro = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
palace = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
baby_spice = Customer.create(first_name: "Emma", last_name: "Bunton")
ginger_spice = Customer.create(first_name: "Geri", last_name: "Halliwell")
scary_spice = Customer.create(first_name: "Melanie", last_name: "Brown")
sporty_spice = Customer.create(first_name: "Melanie", last_name: "Chisholm")
posh_spice = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
# ********************************************************************
# * TODO: create reviews! Remember, a review belongs to a restaurant *
# * and a review belongs to a customer.                              *
# ********************************************************************
# Create reviews Here
Review.create(customer_lastname: "#{baby_spice.last_name}", star_rating: 4, restaurant_id: 1)
Review.create(customer_lastname: "#{sporty_spice.last_name}", star_rating: 5, restaurant_id: 1)
Review.create(customer_lastname: "#{scary_spice.last_name}", star_rating: 3, restaurant_id: 3)
Review.create(customer_lastname: "#{posh_spice.last_name}", star_rating: 2, restaurant_id: 2)
puts "Seeding done!"