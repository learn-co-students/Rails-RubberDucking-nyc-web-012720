require 'faker'

Duck.destroy_all
Student.destroy_all

10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end
student1 = Student.create(name: Faker::Name.name, mod: rand(1..5))

5.times do
  Duck.create(name: Faker::BossaNova.artist, description: Faker::Creature::Dog.breed, student: student1)
end
