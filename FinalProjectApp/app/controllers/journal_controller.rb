class JournalController < ApplicationController
	def index
		if Post.present?
			@randomPost = Post.find(:all, :order => "RANDOM()", :limit => 15)
		end
	end
end