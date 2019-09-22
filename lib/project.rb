require 'pry'

class Project
	

	attr_accessor :backer

	def initialize(title)
		@title = title
		@backers = []
	end

	def title
		@title
	end	

	def backers
		@backers
	end

	def add_backer(backer)
		@backers << backer
		@backers << backer.back_project(self) unless backer.backed_projects.include?(self)
	end

end