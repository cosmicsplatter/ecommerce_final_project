require "faker"

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end

Review.destroy_all
Beer.destroy_all
Category.destroy_all
Brewery.destroy_all

20.times do
  Category.create({
                    name: Faker::Beer.unique.style
                  })
end

15.times do
  Brewery.create({
                   name:        Faker::Beer.unique.brand,
                   description: Faker::Hipster.sentence(word_count: 10)
                 })
end

150.times do
  Beer.create({
                name:        Faker::Beer.name,
                price:       Faker::Commerce.price(range: 2.00..15.00),
                description: Faker::Hipster.sentence(word_count: 5),
                category_id: rand(1..20),
                brewery_id:  rand(1..15)

              })
end
