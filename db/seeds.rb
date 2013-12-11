# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create(name: "Иван Викторов", position: "защитник", description: "")
Player.create(name: "Емануил Иванов", position: "полузащитник", description: "")
Player.create(name: "Ивайло Христов", position: "вратар", description: "")
Player.create(name: "Горан Йорданов", position: "нападател", description: "")

Event.create(title: "мач0", description: "няма", starts: "20140101 00:00:00")
Event.create(title: "мач1", description: "няма", starts: "20140102 00:00:00")