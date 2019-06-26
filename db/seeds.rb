# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Jane Doe", email: "jane@example.com", balance: 10_000, api_key: SecureRandom.uuid)
User.create!(name: "John Doe", email: "john@example.com", balance: 5_000, api_key: SecureRandom.uuid)
