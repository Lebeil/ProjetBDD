require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed des spécialités médicales
specialities = ['DERMATOLOGY','ANESTHESIOLOGY','NEUROLOGY','GENERALIST','PEDIATRICS']
specialities.each { |x| Specialty.create!(name: x) }

# seed des villes
10.times do
  City.create!(
    name: Faker::Address.city
  )
end

# seed des patients
10.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
end

# seed des docteurs
10.times do
  Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    # specialty: Specialty.all.sample,
    zip_code: Faker::Address.zip,
    city: City.all.sample
  )
end

# seed des rdv
50.times do
  Appointment.create!(
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    city: City.all.sample,
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 60)
  )
end

# seed des doctors_specialties
Doctor.all.each do |x|
  rand(1..3).times { DoctorSpecialty.create!(doctor: x, specialty: Specialty.all.sample) }
end
