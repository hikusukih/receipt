# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.create!(name: 'Garelic Farms Milk')
Item.create!(name: 'Starbucks Starfish')
Item.create!(name: 'Hoffman\'s Playland')
Item.create!(name: 'Crazy Glue')
Item.create!(name: 'Price Chopper Tarty Pops')

Location.create!(name: 'Hannaford on 7')
Location.create!(name: 'Price Chopper on 7')
Location.create!(name: 'Hannaford on 9')
Location.create!(name: 'Price Chopper on 9')
Location.create!(name: 'Qwik-E-Mart')

User.create!(name: "David Michael Benjamin", email: nil, created_at: "2016-12-17 21:59:51", updated_at: "2016-12-17 21:59:51", provider: "facebook", uid: "10103165500298839", oauth_token: "EAAFtNrZCZBwfsBAEZAl7NBwyhDysU2NPAW5t3IOPLr8vWozKZBHX4ivPy2x4Iva0rd1DTShxyaldq8Twt8dB2kapbtD4iZA1gCvZBbwjdQIf8LdWuzz3CZAWWJDFnBLwNAUYbvsWJLZCo4G9HPkBn5IpDlOxvbQswNYZD", oauth_expires: "2017-02-15 20:16:35")
