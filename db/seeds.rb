# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    
    Client.create!(
        name: Faker::Name.name,  
        phone_number: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email   
    )
end

clients = Client.all
fechas = "01-01-2020".to_date.."10-10-2021".to_date
fechas = fechas.to_a

10.times do |i|

    Pet.create(
        name: Faker::Creature::Dog.name,
        race: Faker::Creature::Dog.breed,
        birthdate: fechas.sample, 
        client_id: clients.sample.id
    ) 
end

