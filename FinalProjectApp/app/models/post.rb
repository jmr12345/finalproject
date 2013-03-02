class Post < ActiveRecord::Base
  attr_accessible :fileName, :message, :title

  belongs_to :user
  has_many :comments
end
