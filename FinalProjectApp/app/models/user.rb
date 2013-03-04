class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password, :username, :user_id

  has_secure_password
	
  validates_uniqueness_of :username

  has_many :posts

  
end
