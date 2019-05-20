require 'pry'

class Backer

    attr_reader :backed_projects
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        backed_projects << project
        project.backers << self
    end

end

# class Project

#     attr_reader :backers
#     attr_accessor :title

#     @@all = []

#     def initialize(title)
#         @title = title
#         @backers = []
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def add_backer(backer)
#         backers << backer
#         backer.backed_projects << self
#     end

# end

# flatiron_project = Project.new("Flatiron Project")


# feven = Backer.new("Feven")
# brendan = Backer.new("Brendan")

# binding.pry

