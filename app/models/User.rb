class User
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name=name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.highest_pledge
        Pledge.all.max_by do |inst| inst.amount end    
    end 
    
    def pledges
        Pledge.all.select do |inst| inst.user == self end 
    end 

    def pledge_count 
        pledges.count 
    end 

    def self.multi_pledger
        self.all.select do |inst| inst.pledge_count >1 end 
    end 

    def self.project_creator 
        self.all.select do |inst| Project.all.find do |project| project.creator == inst end 
        end 
    end 
end 