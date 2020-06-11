# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

apptypes = ['eye', 'radiology', 'surgery']
2.times do
  doctor = Doctor.create(
    first_name: Faker::Movies::StarWars.planet,
    last_name: Faker::Books::Dune.planet,
    specialty: Faker::Movies::StarWars.call_number 
  )

  1.times do
    patient = Patient.create(
      first_name: Faker::TvShows::RickAndMorty.character, 
      last_name: Faker::Games::Zelda.character
    )

    Appointment.create(
      apptype: apptypes.sample,
      date:
      time: 
      doctor_id: doctor.id,
      patient_id: patient.id 
    )
  end
end
puts 'data seeded'