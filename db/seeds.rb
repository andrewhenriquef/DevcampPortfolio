#here we use to create sample data to our application
User.create!(
  email: 'admin@gmail.com',
  password: 'korn10',
  password_confirmation: 'korn10',
  name: 'Admin User',
  roles: 'site_admin'
)

puts '1 Admin user created'

User.create!(
  email: 'regular@gmail.com',
  password: 'korn10',
  password_confirmation: 'korn10',
  name: 'Regular User'
)

puts '1 Regular user created'

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
  	title: "My Blog Post #{blog}",
  	body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
  	  Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  	  Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis
  	  enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus
  	  ut, imper",
      topic_id: Topic.last.id

  )
end

puts "10 Blog posts created"

5.times do |skill|
  Skill.create!(
  	title: "Rails #{skill}",
  	percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
  body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
      Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
      Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis
      enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus
      ut, imper",
  main_image: "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
  	title: "Portfolio title: #{portfolio_item}",
  	subtitle: "Angular",
	body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
  	  Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  	  Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis
  	  enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus
  	  ut, imper",
	main_image: "http://via.placeholder.com/600x400",
	thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items  created"

3.times do |technology|
  Portfolio.last.technologies.create!(name: "Technology #{technology}")
end

puts "3 technologies created"
