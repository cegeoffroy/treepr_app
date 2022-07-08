
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

puts 'Creating experiences...'

accommodation_attributes = [
  {
    name: "House in the trees",
    listing_type: "Glamping",
    address: "12, lancashire road",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse libero eros, ultrices non aliquet ac, molestie in ex. Etiam posuere placerat risus non ultricies. Nam pharetra neque sit amet bibendum porttitor. Proin sit amet leo et est pulvinar volutpat ac ac urna. Suspendisse tincidunt mi purus, a ultrices eros lobortis at. Mauris lobortis nisl diam, sit amet congue turpis eleifend non. Vivamus id mattis velit."
  },
  {
    name: "Indiana rivers",
    listing_type: "Rafting",
    address: "1, bob street",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse libero eros, ultrices non aliquet ac, molestie in ex. Etiam posuere placerat risus non ultricies. Nam pharetra neque sit amet bibendum porttitor. Proin sit amet leo et est pulvinar volutpat ac ac urna. Suspendisse tincidunt mi purus, a ultrices eros lobortis at. Mauris lobortis nisl diam, sit amet congue turpis eleifend non. Vivamus id mattis velit."
  }
]

Experience.create!(accommodation_attributes)
puts 'Went fishing...'
puts 'All good'
