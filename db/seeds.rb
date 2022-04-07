require "faker"

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end

Category.create!(category_name: "Analog", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Digital", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Automatic", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Chronograph", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Dress", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Diving", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Quartz", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Mechanical", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Pilot", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Field", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Smart", category_description: Faker::Lorem.sentence)
Category.create!(category_name: "Luxury", category_description: Faker::Lorem.sentence)

Option.create!(option_name: "Option One", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Two", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Three", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Four", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Five", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Six", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Seven", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Eight", option_description: Faker::Lorem.sentence)
Option.create!(option_name: "Option Nine", option_description: Faker::Lorem.sentence)

80.times do
  Product.create!(product_name:        Faker::Lorem.word,
                  product_price:       Faker::Commerce.price(range: 75.0..10_000.0),
                  product_image:       "",
                  product_description: Faker::Lorem.sentence)
end
