class Comment < ActiveRecord::Base
  attr_accessible :post_id1, :post_id2

  belongs_to :post
end
