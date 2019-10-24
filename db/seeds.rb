# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do
  city = City.create!(name: Faker::Address.city)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, city: city)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, zip_code: "75008", city: city)
  appointment = Appointment.create!(doctor: doctor, patient: patient, date: Time.now, city: city)
  specialty = Specialty.create!(name: "cardiologie")
  knowledge = Knowledge.create!(doctor: doctor, specialty: specialty)
end


