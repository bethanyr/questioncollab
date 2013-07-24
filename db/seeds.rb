user = User.create(:email => "admin@ticketee.com",
:password => "password")
user.confirm!
user2 = User.create(:email => "admin2@ticketee.com",
:password => "password")
user2.confirm!
user3 = User.create(:email => "admin3@ticketee.com",
:password => "password")
user3.confirm!
user4 = User.create(:email => "admin4@ticketee.com",
:password => "password")
user4.confirm!
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
