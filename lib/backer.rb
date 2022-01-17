class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_arr = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        project_backer_arr.map {|element| element.project}
    end
end