require 'faker'

pics = [
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716953/7CfzycbUaRbfLWEaUxef5gtj.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716950/phu6H9bDRdbAhmXPFgnCbBTY.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716947/fA9zj1HFyboq9iDjwM1FTnec.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716944/ZiCs4sWsadmCn8F89kAxZAkW.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716940/2WYYBv169EREP5Yw5QBZbAmy.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716937/qohLigvSrBNKT89BkeaTDp4x.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716935/fpcryuFCnM6xs9bsYpfthSYY.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716933/9SMBQiGHFieppkM2UHJYhFVi.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716930/VUoFCutjkJFS7G5c38ngMXki.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716928/dmBRo9qJe2ZbeCQ2WTnVNFd2.jpg",
]

gallery = [
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716953/7CfzycbUaRbfLWEaUxef5gtj.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716950/phu6H9bDRdbAhmXPFgnCbBTY.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716947/fA9zj1HFyboq9iDjwM1FTnec.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582716944/ZiCs4sWsadmCn8F89kAxZAkW.jpg"
  ]

addresses = [
  "Hafenplatz 5 Berlin",
  "Leipziger strasse 17 Berlin",
  "Leipziger strasse 46 Berlin",
  "Checkpoint Charlie Berlin",
  "Krausenstrasse 62 Berlin",
  "Rudi-Dutschke-Strasse 26 Berlin",
  "Friedrichstrasse 45 Berlin",
  "Friedrichstrasse 40 Berlin",
  "Friedrichstrasse 10 Berlin",
  "Friedrichstrasse 70 Berlin"
]

i = 0

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
    location: addresses[i],
    price: Faker::Commerce.price(range: 10.0..200.0),
    horsepower: Faker::Number.between(from: 50, to: 500),
  })

  car.user = user

  file = URI.open(pics[i])

  car.thumbnail.attach(io: file, filename: 'car.jpeg', content_type: 'image/jpg')
  gallery.each { |photo| car.photos.attach(io: URI.open(photo), filename: 'car.jpeg') }

  car.save!

  i += 1

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
