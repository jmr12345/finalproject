class JournalController < ApplicationController
	def index
		if Post.present?
			@randomPost = Post.find(:all, :order => "RANDOM()", :limit => 10)
		end
	end
end