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

Vet.create([
  {
    name: 'John Dolittle',
    age: 43,
    graduation_date: '2009-03-20'
  },
  {
    name: 'Gideon Crane',
    age: 21,
    graduation_date: '2018-05-23'
  },
  {
    name: 'Pearl Keith',
    age: 65,
    graduation_date: '2000-01-02'
  }
])

p "Created #{Vet.count} vets"

Owner.create([
  {
    name: 'Roberta Southern',
    age: 23,
    email: 'robertasouth@mail.com'
  },
  {
    name: 'Richard Olsen',
    age: 38,
    email: 'richardolsen@mail.com'
  }
])

p "Created #{Owner.count} owners"

Animal.create([
  {
    name: 'Fluffy',
    birth_date: '2014-05-20',
    neutered: true,
    weight_kg: 9,
    species_id: 9,
    owner_id: 1
  },
  {
    name: 'Butter',
    birth_date: '2022-04-13',
    neutered: true,
    weight_kg: 0.8,
    species_id: 2,
    owner_id: 1
  }
])

p "Created #{Animal.count} animals"

Specialization.create([
  {
    species_id: 2,
    vet_id: 1
  },
  {
    species_id: 3,
    vet_id: 3
  },
  {
    species_id: 9,
    vet_id: 3
  }
])

p "Created #{Specialization.count} vets specializations"

Visit.create({
  animal_id: 1,
  vet_id: 3,
  visit_date: '2022-10-31'
})

p "Created #{Visit.count} visit"
