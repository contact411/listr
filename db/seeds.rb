# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

# normal user
User.create({
  email: "normal@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
})

# admin
User.create({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})

User.create({
  email: "joelhampton@gmail.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})