class Comment < ActiveRecord::Base
  attr_accessible :post_id, :text, :username

  belongs_to :post
end
