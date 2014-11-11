# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:"jim@nycda.com",name:"Jim",password:"password")
User.create([
  {email: "bob@gmail.com", name: "Bob" , password:"password"},
  {email: "sally@yahoo.com" , name: "Sally", password:"password"},
  {email: "robbob@yahoo.com" , name: "Robbob", password:"password"},
  {email: "harry@gmail.com", name: "HairyHarry", password:"password"}
  ])
