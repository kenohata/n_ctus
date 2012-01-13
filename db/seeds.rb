# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u=User.new(
  # :id => 1,
  :email => "j6210025@ed.tus.ac.jp",
  :student_id => 6210025 ,
  :password => "rikadai",
  :role  => "admin"
).confirm!

User.find(6210025).profile.update_attributes  id: 1,
  user_id: 6210025,
  name: "ハタケン(大畠 健)",
  grade: 2,
   url: "http://planforgrowth.org/",
  bio: "コンピューターはじめました。\nみなさんよろしくおねがいします。
Ruby/Ruby on Rails/Ubuntu/Linux/C++/Python/"

u=User.new(
  # :id => 7310041,
  :email => "j7310041@ed.tus.ac.jp",
  :student_id => 7310041,
  :password => "rikadai"
).confirm!

User.find(7310041).profile.update_attributes   id: 2,
  user_id: 7310041,
  name: "Kazuiest",
  grade: 1


u=User.new(
  # :id => 7310059,
  :email => "j7310059@ed.tus.ac.jp",
  :student_id => 7310059,
  :password => "rikadai"
).confirm!

User.find(7310059).profile.update_attributes   id: 3,
  user_id: 7310059,
  name: "ワッキー(斉脇)",
  grade: 1,
  url: "http://undapt.jp/",
  bio:" 横浜の師匠のもとで魔法の勉強中。"
