# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
a = Dog.create(name: "Fifou", race: "Berger")
j = Dog.create(name: "Snoop", race: "Labrador")
g = Dog.create(name: "Platini", race: "Irlando")
o = Dogsitter.create(name: "Ojo")
b = Dogsitter.create(name: "Orlando")
z = Dogsitter.create(name: "Bg de la street")
c = City.create(city_name: "Théoville")
d = City.create(city_name: "Frandupont")
e = City.create(city_name: "Montpellier")

a.city = e
b.city = e
o.city = c
j.city = d
g.city = c

Stroll.create(dog: a, dogsitter: b)
Stroll.create(dog: j)
Stroll.create(dog: g)
Stroll.create(dog: g, dogsitter: o)

puts tp Stroll.all