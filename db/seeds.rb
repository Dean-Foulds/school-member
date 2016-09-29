# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.destroy_all
School.destroy_all

puts "creating users"
member1 = Member.new(name: "Bob moore", email: "bob@bob.com")
member2 = Member.new(name: "Mark Jones", email: "mark@bob.com")
member1.save
member2.save
puts "creating schools"
school1 = School.new(name: "Swadelands")
school2 = School.new(name: "Vinters")



school1.save
school2.save
