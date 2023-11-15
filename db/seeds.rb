# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times do
  category_random = %w[chinese italian japanese french belgian].sample
  faker_name = Faker::DcComics.hero
  faker_address = Faker::Address.full_address
  faker_number = Faker::PhoneNumber.phone_number
  data = { name: faker_name, address: faker_address, category: category_random, phone_number: faker_number }
  Restaurant.create(data)
end
