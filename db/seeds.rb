require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  user = User.create!({
    email: Faker::Internet.email(domain: 'gmail'),
    password: Faker::Internet.password(min_length: 10, max_length: 20),
    name: Faker::Name.name,
    age: Faker::Number.between(from: 20, to: 70),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zip: Faker::Address.zip
  })

  car = Car.new({
    model: Faker::Company.name,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    location: Faker::Address.city,
    attached_pics: Faker::Placeholdit.image(size: '100x100', format: 'jpg'),
    price: Faker::Commerce.price(range: 10.0..200.0),
    horsepower: Faker::Number.between(from: 50, to: 500)
  })

  car.user = user
  car.save!

end

User.create!({
  email: "brunobrunckhorst@gmail.com",
  password: "DsRSu90wAD287$",
  name: "Bruno Brunckhorst",
  age: "2/12/1993",
  address: "Hafenplatz 5",
  city: "Berlin",
  zip: "10963"
})

User.create!({
  email: "tim@gmail.com",
  password: "123456",
  name: "Tim",
  age: "1/1/1998",
  address: "Timstrasse 1",
  city: "Berlin",
  zip: "10963"
})

User.create!({
  email: "patrick@gmail.com",
  password: "123456",
  name: "Patrick",
  age: "1/1/1986",
  address: "Patrickstrasse 1",
  city: "Berlin",
  zip: "10963"
})

User.create!({
  email: "finn@gmail.com",
  password: "123456",
  name: "Finn",
  age: "1/1/1995",
  address: "Finnstrasse 1",
  city: "Berlin",
  zip: "10963"
})
