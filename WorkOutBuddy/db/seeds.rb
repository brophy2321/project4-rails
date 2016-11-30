# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Muscle.destroy_all

chest = Muscle.create!(title: 'Chest', photoUrl: 'http://build-muscle-101.com/wp-content/uploads/2014/12/chest-muscles.jpg')
arms = Muscle.create!(title: 'Arms', photoUrl: 'http://www.muscleblitz.com/wp-content/uploads/2014/01/arm-diagram.jpg')
legs = Muscle.create!(title: ' Legs', photoUrl: 'https://s-media-cache-ak0.pinimg.com/originals/5d/05/85/5d0585aa0a7ecf0a51202bdc3d8746bd.jpg')
back = Muscle.create!(title: 'Back', photoUrl: 'http://www.wedocable.com/photo/370x250-lower-back-muscles-diagram-1994003.jpeg')
