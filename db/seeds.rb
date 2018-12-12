# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artifact_ex = [
  [ "Husky Ladder", "failed rung", "Construction", "California" ],
  [ "18ft Ladder", "failing slide mechanism", "Construction", "Illinois" ],
  [ "Industrial Dishwasher", "Heating element exploded", "Fire", "Nebraska" ],
  [ "Cummins Bus Engine", "rod failure", "Automotive", "Illinois" ],
  [ "Train", "Litrally a whole train with suspected engine failure", "Rail", "Illinois" ]
]
artifact_ex.each do|name, desc, dept, loc|
    Artifact.create( name: name, description: desc, department: dept, default_location: loc)
end
