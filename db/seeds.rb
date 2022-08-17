# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(username: "Demo User", password: "demopassword123", email: "demoemail@demo.com", email_confirmation: "demoemail@demo.com", gender: "Male", birthday:"1997/12/23")