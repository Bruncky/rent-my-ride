require 'faker'
require 'nokogiri'
require 'open-uri'

Car.destroy_all

pics = [
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144793/car12_fcwrki.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144793/car7_vouiuf.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144793/car10_rduo0g.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144792/car16_kljaya.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144791/car15_pafxk7.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144792/car14_ox0f3l.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144791/car11_yt2r0d.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144791/car13_tgrnkw.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car8_v3ykyi.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car9_bkl3dj.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car5_remcma.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car4_nuwres.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car6_kxx8hv.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car3_lodah6.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144790/car1_dfje7q.jpg",
  "https://res.cloudinary.com/dbqegklxb/image/upload/v1585144789/car2_sds9rx.jpg"
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

  file = URI.open('https://images.unsplash.com/photo-1565346015502-bee2b63e735b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1814&q=80')

  car.thumbnail.attach(io: file, filename: 'car.jpg', content_type: 'image/jpg')

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
