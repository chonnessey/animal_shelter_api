# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
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
    10.times do |i|
      dog = Animal.create!(
        animal_type: "Dog",
        breed: Faker::Creature::Dog.breed,
        name: Faker::JapaneseMedia::Naruto.character,
        age: Faker::Number.between(from: 1, to: 20),
        sex: "Male",
        color: Faker::Color.color_name,
        weight: Faker::Number.between(from: 5, to: 100),
        date: Faker::Date.backward(days: 365),
        adoption_fee: Faker::Number.decimal(l_digits: 2)
      )
      puts "#{dog.animal_type} #{i}: Name is #{dog.name}, Breed is #{dog.breed} and age is #{dog.age}."
    end

    10.times do |d|
      cat = Animal.create!(
        animal_type: "Cat",
        breed: Faker::Creature::Cat.breed,
        name: Faker::JapaneseMedia::Naruto.character,
        age: Faker::Number.between(from: 1, to: 20),
        sex: "Female",
        color: Faker::Color.color_name,
        weight: Faker::Number.between(from: 5, to: 100),
        date: Faker::Date.backward(days: 365),
        adoption_fee: Faker::Number.decimal(l_digits: 2)
      )
      puts "#{cat.animal_type} #{d}: Name is #{cat.name}, Breed is #{cat.breed} and age is #{cat.age}."
    end
  end
end

Seed.begin
