require 'faker'

Car.destroy_all

pics = [
<<<<<<< HEAD
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1583010772/ZbKAbjj7A2yGm65o5jRcLcnA.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929355/piofx3cyP5fQBSPFqkd2nYFg.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929350/1dFJUTpF22nqTKdpUZnCrERc.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929338/P3qYyLeXzcB1tggNuxfV2NJv.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929333/7xjUw6LFuFVUNjiuxoFuQWnm.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929330/ZPQ8LwZJQJKFpWGFqU1n659b.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929326/bsFibwhHtmzRZ2SRLqZqCjVb.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929007/RrJHqH8UuNZW4ybjsU9nJra1.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929057/VkgmFu3Ea7m5nf3EZkXLMRv3.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929083/61nURrTotjzSWZoNLdqYGkqJ.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929051/vAgzwx6R3Gv8jh6E6Vg8HdH3.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929047/4jXrYwrYrc4HvnC4nR8nMjEe.jpg",
=======
  "https://images.unsplash.com/photo-1524249403638-63d60df939eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1439158974188-fa4ebec31017?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1532937645515-9778bfbb099a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1778&q=80",
  "https://images.unsplash.com/photo-1506560411-58ae1f86da62?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1507218433416-313c96e07830?ixlib=rb-1.2.1&auto=format&fit=crop&w=1736&q=80",
  "https://images.unsplash.com/photo-1521657142174-c7353dc830cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80",
  "https://images.unsplash.com/photo-1516669207770-9451d52f0844?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80",
  "https://images.unsplash.com/photo-1504455637435-8d1a13cd8a93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1533061652211-66aa2f608e10?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1510531699559-bdec36f840e0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1565520651265-1148c3b277f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1563831816793-3d32d7cc07d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80"
>>>>>>> bac323053c40f6a89d8fa3bac8b3e021f9d88da5
]

addresses = [
  "Hafenplatz 5 Berlin",
  "Modersohnstrasse 60 Berlin",
  "Leipziger strasse 46 Berlin",
  "Checkpoint Charlie Berlin",
  "Krausenstrasse 62 Berlin",
  "Rudi-Dutschke-Strasse 26 Berlin",
  "Friedrichstrasse 45 Berlin",
  "Friedrichstrasse 40 Berlin",
  "Friedrichstrasse 10 Berlin",
  "Friedrichstrasse 70 Berlin",
  "Krausenstrasse 50 Berlin",
  "Friedrichstrasse 47 Berlin"
]

i = 0

12.times do


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
    location: addresses[i],
    price: Faker::Commerce.price(range: 10.0..200.0),
    horsepower: Faker::Number.between(from: 50, to: 500),
  })

  car.user = user

  file = URI.open(pics[i])

  car.thumbnail.attach(io: file, filename: 'car.jpeg', content_type: 'image/jpg')

  car.save!

  i += 1

end

# User.create!({
#   email: "brunobrunckhorst@gmail.com",
#   password: "DsRSu90wAD287$",
#   name: "Bruno Brunckhorst",
#   age: "2/12/1993",
#   address: "Hafenplatz 5",
#   city: "Berlin",
#   zip: "10963"
# })

# User.create!({
#   email: "tim@gmail.com",
#   password: "123456",
#   name: "Tim",
#   age: "1/1/1998",
#   address: "Timstrasse 1",
#   city: "Berlin",
#   zip: "10963"
# })

# User.create!({
#   email: "patrick@gmail.com",
#   password: "123456",
#   name: "Patrick",
#   age: "1/1/1986",
#   address: "Patrickstrasse 1",
#   city: "Berlin",
#   zip: "10963"
# })

# User.create!({
#   email: "finn@gmail.com",
#   password: "123456",
#   name: "Finn",
#   age: "1/1/1995",
#   address: "Finnstrasse 1",
#   city: "Berlin",
#   zip: "10963"
# })
