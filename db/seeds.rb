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

Province.create({ name: "Alberta", abbreviation: "AB", gst: 0, pst: 0.05 })
Province.create({ name: "British Columbia", abbreviation: "BC", gst: 0.7, pst: 0.05 })
Province.create({ name: "Manitoba", abbreviation: "MB", gst: 0.7, pst: 0.05 })
Province.create({ name: "New Brunswick", abbreviation: "NB", gst: 0.075, pst: 0.075 })
Province.create({ name: "Newfoundland and Labrador", abbreviation: "NL", gst: 0.075, pst: 0.075 })
Province.create({ name: "Northwest Territories", abbreviation: "NT", gst: 0.05, pst: 0.05 })
Province.create({ name: "Nova Scotia", abbreviation: "NS", gst: 0.075, pst: 0.075 })
Province.create({ name: "Nunavut", abbreviation: "NU", gst: 0.05, pst: 0.05 })
Province.create({ name: "Ontario", abbreviation: "ON", gst: 0.065, pst: 0.065 })
Province.create({ name: "Prince Edward Island", abbreviation: "PE", gst: 0.075, pst: 0.075 })
Province.create({ name: "Quebec", abbreviation: "QC", gst: 0.05, pst: 0.09975 })
Province.create({ name: "Saskatchewan", abbreviation: "SK", gst: 0.05, pst: 0.06 })
Province.create({ name: "Yukon", abbreviation: "YT", gst: 0.05, pst: 0 })
