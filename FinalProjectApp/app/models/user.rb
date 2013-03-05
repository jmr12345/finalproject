class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password, :username, :user_id

  has_secure_password
	
  validates_uniqueness_of :username

  has_many :posts
  has_many :subscribers, :class_name => 'Subscriptions', :foreign_key => 'user_id'
  has_many :subscriptions, :class_name => 'Subscriptions', :foreign_key => 'subscriber_id'

  
end
