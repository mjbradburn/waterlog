# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lake.delete_all

Lake.create!(lkname: "Avery")
Lake.create!(lkname: "Clear")
Lake.create!(lkname: "Douglas")
Lake.create!(lkname: "Barr")
Lake.create!(lkname: "Au Train")
Lake.create!(lkname: "Eagle")
Lake.create!(lkname: "Osterhout")
Lake.create!(lkname: "Torch")
Lake.create!(lkname: "Crooked")
Lake.create!(lkname: "Platte")
Lake.create!(lkname: "Randall")
