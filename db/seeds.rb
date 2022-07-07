
puts 'Creating users...'
admin = User.new
admin.first_name = "Admin"
admin.last_name = "Boss"
admin.email = 'charles@treepr.co.uk'
admin.password = "123456"
admin.password_confirmation = "123456"
admin.admin = true
admin.save!

charles = User.new
charles.first_name = "charles"
charles.last_name = "geoffroy"
charles.email = 'charles@dgtlpay.co'
charles.password = "123456"
charles.password_confirmation = "123456"
charles.save!

puts 'Finished creating users!'
