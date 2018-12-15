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
  end

  task :seed_users => [ :environment ] do
    puts "seeding users..."
    100.times do
      User.create!(username: Faker::LordOfTheRings.character,
                   email: Faker::Internet.email,
                   password: "password",
                   password_confirmation: "password")
    end
  end
end
