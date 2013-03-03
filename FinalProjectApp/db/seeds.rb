if Rails.env.development?
  User.destroy_all
  Post.destroy_all
end

password = "hockey"
email = "email@email.com"
birthday =  Date.new(2013, 12, 10)

User.create username: "AnnaBanana",
	firstname: "Anna",
	lastname: "Banana",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "bballplaya",
	firstname: "Bball",
	lastname: "Playa",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "MrSmith",
	firstname: "John",
	lastname: "Smith",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "JaneDoe",
	firstname: "Jane",
	lastname: "Doe",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "ImACarebear",
	firstname: "Cheery",
	lastname: "Bear",
	password: password,
	email: email,
	birthday: birthday

User.create	username: "BabyC",
	firstname: "Charlie",
	lastname: "Chiu",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "FiFi",
	firstname: "FiFi",
	lastname: "Dog",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "paperclip",
	firstname: "Paper",
	lastname: "Clip",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "fruitsnack",
	firstname: "Fruit",
	lastname: "Snack",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "iluvgumdrops",
	firstname: "Mary",
	lastname: "Johnson",
	password: password,
	email: email,
	birthday: birthday

user = User.find_by_username("AnnaBanana")

Post.create message: "Woo Woo!!!",
	fileName: "http://3.bp.blogspot.com/-_eOAyAjt_n4/TVNoSHpVijI/AAAAAAAABh4/9XpqcOAbaWU/s1600/Banana.jpg",
	user_id: user.id

Post.create message: "So Madddddd",
	fileName: "http://spitfirelist.com/wp-content/uploads/2012/04/Tough-Banana.jpg",
	user_id: user.id

Post.create message: "No image for this banana!",
	user_id: user.id

Post.create message: "Happy banana dance!",
	fileName: "http://24.media.tumblr.com/tumblr_mbeacveUWM1qg9iulo1_400.gif",
	user_id: user.id

Post.create message: "I want a puppy!",
	fileName: "http://24.media.tumblr.com/tumblr_me7sa5hJFq1qer48zo1_500.jpg",
	user_id: user.id


