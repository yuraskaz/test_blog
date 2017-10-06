george = User.where(name: Faker::Name.name).create
mike   = User.where(name: Faker::Name.name).create

2.times  do 
  post = george.posts.create(
  	title: [Faker::Hacker.adjective, Faker::Hacker.noun].join('').titleize,
  	body: Faker::Hacker.say_something_smart
  	)
  post.comments.create(body: Faker::Hipster.sentence, user: mike)
end

	
