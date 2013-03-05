class Subscription < ActiveRecord::Base
  attr_accessible :subscriber_id, :user_id

  belongs_to :user
  belongs_to :subscriber, :class_name => 'User'

end
