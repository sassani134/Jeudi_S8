# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


<<<<<<< HEAD
20.times do
=======
10.times do
>>>>>>> 712fb52beff247f83710b96d9112d8fe9ce3db9e
 email = Email.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
end