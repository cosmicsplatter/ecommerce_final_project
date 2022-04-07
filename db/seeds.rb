require "faker"

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end

Review.destroy_all
Beer.destroy_all
Brewery.destroy_all

100 times do
  Beer.create({

  })
end
