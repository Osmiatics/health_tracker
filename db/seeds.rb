# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ExerciseType.create(name: "Aerobics", calories_per_minute: 8)
ExerciseType.create(name: "Cycling", calories_per_minute: 7)
ExerciseType.create(name: "Gardening", calories_per_minute: 5)
ExerciseType.create(name: "Martial Arts", calories_per_minute: 12)
ExerciseType.create(name: "Running", calories_per_minute: 13)
ExerciseType.create(name: "Sitting", calories_per_minute: 2)
