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
    20.times do |i|
      animal = Animal.create!(
        animal_type: "Dog" || "Cat",
        breed: Faker::Creature::Dog.breed || Faker::Creature::Cat.breed,
        name: Faker::JapaneseMedia::Naruto.character,
        age: Faker::Number.between(from: 1, to: 20),
        sex: "Male" || "Female",
        color: Faker::Color.color_name,
        weight: Faker::Number.between(from: 5, to: 100),
        date: Faker::Date.backward(days: 365),
        adoption_fee: Faker::Number.decimal(l_digits: 2)
      )
      puts "#{animal.animal_type} #{i}: Name is #{animal.name} and age is #{animal.age}."
    end
  end
end

Seed.begin
