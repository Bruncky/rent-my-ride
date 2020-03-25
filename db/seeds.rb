require 'faker'

Car.destroy_all

pics = [
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965878/WpPpnZMTF9QqFzRWhKhaky5i.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965873/VizLWHQBJujmBen6dwJEsPmq.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965861/YPnLY9byFcUbfzG9ueeJh2Rx.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965837/fUCeFZa7eWak8hVDGAfKzuyZ.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965844/LvQer698bSG1ZwTj1f8QFnA8.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1583010772/ZbKAbjj7A2yGm65o5jRcLcnA.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965818/AzCLVqhqtqPVez5k8T2b3exe.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965853/C1AxUfSdr5zKiHb6KTXVQx9U.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965870/FvRU6sG4jPMw68AfV79ncWSF.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965849/7FAwYk4CZK3JrLRhegKEdLTB.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1584965828/thKRcXtTePq46d3tF8emSUhM.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1582929318/RwK6SwTmvEHvo45gBycg7oUo.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585137339/photo-1565985975612-3a33aa67353f_oqhq6g.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585137339/photo-1565346015502-bee2b63e735b_jyudem.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585137339/photo-1565294678301-bd57e84c7337_lvlbuu.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585137339/photo-1566218246201-db22c11310ad_hyvz3l.jpg"
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
  "Friedrichstrasse 47 Berlin",
  "Leipziger strasse 43, Berlin",
  "Invalidenstrasse 10, Berlin",
  "Krausenstrasse 26, Berlin",
  "Kastanienallee 36a, Berlin"
]

i = 0

16.times do


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
    description: Faker::Vehicle.standard_specs,
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
