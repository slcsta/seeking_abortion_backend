# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

oklahoma = State.create(name: "Oklahoma")
new_mexico = State.create(name: "New Mexico")

Clinic.create(name: "Trust Women", adress: "1240 SW 44th Street", city: "Oklahoma City", :zip_code "73109", :phone_number "405-429-7940", state: "Oklahoma")
Clinic.create(name: "UNM Center for Reproductive Health", adress: "2301 Yale Blvd SE suite e", city: "Albuquerque", :zip_code "87106", :phone_number "505-925-4455", state: "New Mexico")



