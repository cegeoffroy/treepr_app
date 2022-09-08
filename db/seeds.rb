# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating users...'
admin = User.new
admin.first_name = "admin"
admin.last_name = "admin"
admin.email = 'charles@treepr.co.uk'
admin.password = "123456"
admin.password_confirmation = "123456"
admin.admin = true
admin.save!
