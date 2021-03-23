# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning db..."

SpeakCost.destroy_all
SpeakLocality.destroy_all

eleven = SpeakLocality.create(code: 11)
puts "Creating locality #{eleven.id}"
sixteen = SpeakLocality.create(code: 16)
puts "Creating locality #{sixteen.id}"
seventeen = SpeakLocality.create(code: 17)
puts "Creating locality #{seventeen.id}"
eighteen = SpeakLocality.create(code: 18)
puts "Creating locality #{eighteen.id}"

connection = SpeakCost.create(speak_locality: eleven, speak_destiny: sixteen, cost: 1.90)
puts "Creating speak connection cost #{connection.id}"
connection = SpeakCost.create(speak_locality: eleven, speak_destiny: seventeen, cost: 1.70)
puts "Creating speak connection cost #{connection.id}"
connection = SpeakCost.create(speak_locality: eleven, speak_destiny: eighteen, cost: 0.90)
puts "Creating speak connection cost #{connection.id}"
connection = SpeakCost.create(speak_locality: sixteen, speak_destiny: eleven, cost: 2.90)
puts "Creating speak connection cost #{connection.id}"
connection = SpeakCost.create(speak_locality: seventeen, speak_destiny: eleven, cost: 2.70)
puts "Creating speak connection cost #{connection.id}"
connection = SpeakCost.create(speak_locality: eighteen, speak_destiny: eleven, cost: 1.90)
puts "Creating speak connection cost #{connection.id}"
