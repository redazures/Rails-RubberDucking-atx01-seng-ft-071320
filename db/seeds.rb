10.times do
  Student.create(name: Faker::Games::Dota.hero, mod: rand(1..5))
end

20.times do
  Duck.create(name: Faker::Creature::Dog.name, description: Faker::Creature::Dog.breed, student_id:Student.all.sample.id)
end
