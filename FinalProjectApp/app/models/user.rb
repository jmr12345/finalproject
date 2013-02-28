class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password, :username

  has_secure_password
	
  validates_uniqueness_of :username
  
end
