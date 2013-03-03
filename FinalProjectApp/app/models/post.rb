class Post < ActiveRecord::Base
  attr_accessible :fileName, :message, :title, :user_id

  belongs_to :user
  has_many :comments
end
