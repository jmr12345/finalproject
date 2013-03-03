class JournalController < ApplicationController
	def index
		@randomPost = Post.find(:all, :order => "RANDOM()", :limit => 10)
	end
end