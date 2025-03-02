class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_arr = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        project_backer_arr.map {|element| element.backer}
    end
end