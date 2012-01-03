# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u=User.new(
  :email => "j6210025@ed.tus.ac.jp",
  :password => "rikadai"
).confirm!

u=User.new(
  :email => "j7310041@ed.tus.ac.jp",
  :password => "rikadai"
).confirm!

u=User.new(
  :email => "j7310059@ed.tus.ac.jp",
  :password => "rikadai"
).confirm!