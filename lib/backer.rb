
require 'pry'

class Backer

	attr_accessor :project
	
  	def initialize(name)
    	@name = name
    	@backed_projects = []
  	end

  	def back_project(project)
    	@backed_projects << project
    	@backed_projects << project.add_backer(self) unless project.backers.include?(self)
    end

    def name
    	@name
    end

    def backed_projects
    	@backed_projects
    end
 

end