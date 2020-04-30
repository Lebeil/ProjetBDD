require 'faker'

# seed cities
2.times do
  City.create!(
    name: Faker::Address.city
  )
end

# seed dogs
10.times do
  Dog.create!(
    name: Faker::Artist.name,
    city: City.all.sample
  )
end

# seed dogsitters
10.times do
  Dogsitter.create!(
    name: Faker::Name.name,
    city: City.all.sample
  )
end

# seed strolls
50.times do
  Stroll.create!(
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id,
    city: City.all.sample,
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 60)
  )
end
