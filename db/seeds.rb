# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Species.create([
  { name: 'Insect' },
  { name: 'Arachnid' },
  { name: 'Mollusca' },
  { name: 'Crustacean' },
  { name: 'Fish' },
  { name: 'Reptile' },
  { name: 'Bird' },
  { name: 'Amphibian' },
  { name: 'Mammal' }
])

p "Created #{Species.count} species"

User.first_or_create(
  name: 'Pedro Guerreiro',
  email: 'pedro@gmail.com',
  password: 'password',
  role: User.roles[:admin])
