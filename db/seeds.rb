# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

p 'Creating Events'
10.times do
  Event.create(
    name_event: Faker::Commerce.product_name,
    image: 'http://placehold.it/350x150',
    description: Faker::Lorem.sentence
  )
end

p 'Creating Categories'
10.times do
  Category.create(
    name: Faker::Commerce.department
  )
end

p 'Creating Products'
30.times do
  Product.create(
    image: 'http://placehold.it/350x150',
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    colors: [Faker::Color.color_name, Faker::Color.color_name, Faker::Color.color_name],
    size: [Faker::Number.between(from: 1, to: 10), Faker::Number.between(from: 1, to: 10),
          Faker::Number.between(from: 1, to: 10)],
    price: Faker::Commerce.price
  )
end

p 'Creating Users'
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    street1: Faker::Address.street_address,
    street2: Faker::Address.secondary_address,
    zipcode: Faker::Address.zip_code,
    country: Faker::Address.country,
    image: 'http://placehold.it/350x150',
    password: 'password'
  )
end
