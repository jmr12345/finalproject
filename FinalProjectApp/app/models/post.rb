class Post < ActiveRecord::Base
  attr_accessible :text, :url, :user_id, :url_html
  
  belongs_to :user
  has_many :comments
  
  
  auto_html_for :url do
    html_escape
    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
end
