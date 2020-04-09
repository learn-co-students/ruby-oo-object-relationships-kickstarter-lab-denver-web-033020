class Backer

    attr_reader :name

    def initialize name
        @name = name
    end 

    def back_project project 
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select{|project| project.backer == self}
        backed_projects.map{|project| project.project}
    end

end