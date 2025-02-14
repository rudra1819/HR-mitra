# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Arrays to generate random data
# db/seeds.rb

10.times do |i|
    Employee.create!(
      first_name: "First#{i + 1}",
      middle_name: "Middle#{i + 1}",
      last_name: "Last#{i + 1}",
      personal_email: "employee#{i + 1}@example.com",
      city: ["New York", "Los Angeles", "Chicago", "Houston", "Miami"].sample,
      state: ["NY", "CA", "IL", "TX", "FL"].sample,
      country: "USA",
      pincode: rand(10000..99999).to_s,
      address_line_1: "123 Street #{i + 1}",
      address_line_2: "Apt #{rand(1..50)}"
    )
  end
  
  puts "✅ 10 Employees created successfully!"
  
