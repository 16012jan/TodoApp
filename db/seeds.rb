# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(first_name: 'first', last_name: 'last', email: 'todo@test.com', password: 'password')
user.skip_confirmation!
user.save!

user_2 = User.new(first_name: 'first', last_name: 'last', email: 'task@test.com', password: 'password')
user_2.skip_confirmation!
user_2.save!

user.tasks.create(title: 'one',   priority: 1)
user.tasks.create(title: 'two',   priority: 2)
user.tasks.create(title: 'three', priority: 3)

user_2.tasks.create(title: 'four',   priority: 1)
user_2.tasks.create(title: 'five',   priority: 2)
user_2.tasks.create(title: 'six', priority: 3)
