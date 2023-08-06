# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding - START"
Employee.destroy_all
Department.destroy_all
# Restaurar los id's de la base de datos
ActiveRecord::Base.connection.reset_pk_sequence!('employees')
ActiveRecord::Base.connection.reset_pk_sequence!('departments')

puts "Seeding departments"
marketing = Department.create(name: "Marketing", description:"The Marketing Department plays a vital role in promoting the business and mission of <OFFIX> organization")
engineering = Department.create(name: "Engineering", description:"The Engineering Department plays a vital role in promoting the business and mission of <OFFIX> organization")
operations = Department.create(name: "Operations", description:"The Operations Department plays a vital role in promoting the business and mission of <OFFIX> organization")

puts "Seeding Employees"

emmet = Employee.create(
  name: "Emmet Bart",
  role: "Software Developer",
  nationality: "Peru",
  birth_date: 31.years.ago,
  department: engineering
)
alva = Employee.create(
  name: "Alva Galia",
  role: "Senior Software Developer",
  nationality: "Mexico",
  birth_date: 25.years.ago,
  department: engineering
)
rico = Employee.create(
  name: "Rico Cornelius",
  role: "Apprentice",
  nationality: "Peru",
  birth_date: 20.years.ago,
  department: engineering
)
lyric = Employee.create(
  name: "Lyric Wilton",
  role: "Software Developer",
  nationality: "Peru",
  birth_date: 40.years.ago,
  department: engineering
)
eva = Employee.create(
  name: "Eva Gabriela",
  role: "Senior Software Developer",
  nationality: "Mexico",
  birth_date: 30.years.ago,
  department: engineering
)

puts "Seeding - END"