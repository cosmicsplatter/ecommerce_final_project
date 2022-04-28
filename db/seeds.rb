require "faker"
require "csv"

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end

csv_text = File.read(Rails.root.join("lib", "seeds", "beer.csv"))
csv = CSV.parse(csv_text, headers: true, encoding: "ISO-8859-1")

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

csv.each do |row|
  Beer.create({
                name:        row["beer"],
                price:       Faker::Commerce.price(range: 2.00..15.00),
                description: Faker::Hipster.sentence(word_count: 5),
                category_id: rand(1..20),
                brewery_id:  rand(1..15)
              })
end
