# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database!"
Car.destroy_all
Owner.destroy_all


puts "Creating new Owners"

owner = Owner.create!(
  nickname: "zoomzoom"
)

owner1 = Owner.create!(
  nickname: "oldgal"
)

owner2 = Owner.create!(
  nickname: "bluebaby"
)

puts "Creating new Cars"

Car.create!(
  brand: "Volkswagen",
  model: "Jetta",
  year: "2023",
  fuel: "Regular",
  owner: owner
)

Car.create!(
  brand: "Honda",
  model: "Pilot FWD",
  year: "2025",
  fuel: "Premimum",
  owner: owner1
)

Car.create!(
  brand: "Volvo",
  model: "XC40",
  year: "2025",
  fuel: "Premimum",
  owner: owner2
)

puts "All done! created"
