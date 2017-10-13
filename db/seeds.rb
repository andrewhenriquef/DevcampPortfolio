#here we use to put sample data

10.times do |blog|
  Blog.create!(
  	title: "My Blog Post #{blog}",
  	body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. 
  	  Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  	  Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis 
  	  enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus 
  	  ut, imper"
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

9.times do |portfolio_item|
  Portfolio.create!(
  	title: "Portfolio title: #{portfolio_item}",
  	subtitle: "My greate service",
	body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. 
  	  Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  	  Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis 
  	  enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus 
  	  ut, imper",
	main_image: "http://via.placeholder.com/600x400",
	thumb_image: "http://via.placeholder.com/350x150" 	
  )
end
puts "9 portfolio items  created"

