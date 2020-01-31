# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        species: Faker::Creature::Animal.name,
        breed: "NA",
        name: Faker::Creature::Cat.name,
        comment: Faker::Quote.famous_last_words
      )
      puts "Animal #{i}: A #{animal.species} named #{animal.name} who's former owner says '#{animal.comment}'."
    end
    100.times do |i|
      animal = Animal.create!(
        species: "Dog",
        breed: Faker::Creature::Dog.breed,
        name: Faker::Creature::Dog.name,
        comment: Faker::Quote.matz
      )
      puts "Animal #{i}: A #{animal.species}, (a #{animal.breed}) named #{animal.name} who's former owner says '#{animal.comment}'."
    end
    100.times do |i|
      animal = Animal.create!(
        species: "Cat",
        breed: Faker::Creature::Cat.breed,
        name: Faker::Creature::Cat.name,
        comment: Faker::TvShows::GameOfThrones.quote
      )
      puts "Animal #{i}: A #{animal.species}, (a #{animal.breed}) named #{animal.name} who's former owner says '#{animal.comment}'."
    end
  end
end

Seed.begin
