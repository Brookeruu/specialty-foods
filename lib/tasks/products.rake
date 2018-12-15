namespace :products do
  desc "seed products"
  task :seed => [ :environment ] do
    puts "seeding products..."
    50.times do
      fake_country = Faker::Address.country
      origin_country = [fake_country, fake_country, fake_country, "USA"]
      Product.create!(name: Faker::Food.ingredient,
                      origin: origin_country.sample,
                      cost: rand(2..17))
    end
    puts "seeding users..."
    100.times do
      User.create!(username: Faker::LordOfTheRings.character,
                   email: Faker::Internet.email,
                   password: "password",
                   password_confirmation: "password")
    end
    puts "seeding reviews..."
    250.times do
      Review.create!(product_id: rand(1..50),
                     user_id: rand(1..100),
                     rating: rand(1..5),
                     content_body: Faker::Lorem.paragraph_by_chars(rand(50..250), false))
    end
  end
end
