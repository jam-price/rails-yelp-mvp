CATEGORIES = %w(chinese italian japanese french belgian)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating Restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "075077849554", category: CATEGORIES.sample }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44754895121", category: CATEGORIES.sample }
pizza_west =  { name: "Pizza West", address: "Catford", phone_number: "02046845", category: CATEGORIES.sample }
jims =  { name: "Jim's", address: "Penge", phone_number: "020168489516", category: CATEGORIES.sample }
ivy =  { name: "The Ivy", address: "Sydenham", phone_number: "0207584951", category: CATEGORIES.sample }

[ dishoom, pizza_east, pizza_west, jims, ivy ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"