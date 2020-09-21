# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Davis", last_name: "Brown")
Student.create(first_name: "Alex", last_name: "Ford")
Student.create(first_name: "Kjell", last_name: "Nelson")
Student.create(first_name: "Tom", last_name: "Blaney")

SchoolClass.create(title: "Math", room_number: 101)
SchoolClass.create(title: "Science", room_number: 102)
SchoolClass.create(title: "Literature", room_number: 103)
SchoolClass.create(title: "Philosophy", room_number: 104)