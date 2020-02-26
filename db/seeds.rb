

Student.create(name: "Greg", mod: 1)
Student.create(name: "Adit", mod: 1)
Student.create(name: "Kelly", mod: 2)
Student.create(name: "Sekou", mod: 2)
Student.create(name: "Julious", mod: 3)
Student.create(name: "Halton", mod: 3)
Student.create(name: "Jared", mod: 4)
Student.create(name: "April", mod: 4)
Student.create(name: "Jason", mod: 5)
Student.create(name: "David", mod: 5)


Duck.create(name: "Duck1", description: "I'm Duck 1.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck2", description: "I'm Duck 2.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck3", description: "I'm Duck 3.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck4", description: "I'm Duck 4.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck5", description: "I'm Duck 5.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck6", description: "I'm Duck 6.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck7", description: "I'm Duck 7.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck8", description: "I'm Duck 8.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck9", description: "I'm Duck 9.", student_id: Student.all.sample(1)[0].id)
Duck.create(name: "Duck10", description: "I'm Duck 10.", student_id: Student.all.sample(1)[0].id)

# 10.times do
#   Student.create(name: Faker::Name.name, mod: rand(1..5))
# end

# 5.times do
#   Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: Student.all.sample(1)[0].id)
# end