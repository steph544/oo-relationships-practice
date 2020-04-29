class Project
    attr_accessor :pledge_goal, :creator

    @@all = []

    def initialize(pledge_goal, creator)
        @pledge_goal= pledge_goal
        @creator= creator 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def pledges
        Pledge.all.select do |inst| inst.project == self
        end  
    end 

    def pledges_count 
        pledges.count 
    end 

    def self.no_pledges
        self.all.select do |inst| inst.pledges_count == 0 end 
    end 

    def total_pledged
        self.pledges.map do |inst| inst.amount end.sum 
    end 
    
    def self.above_goal 
        self.all.select do |inst| inst.pledge_goal <= inst.total_pledged end   
    end 

    def self.most_backers
        @@all.max_by do |inst| inst.pledges_count end 
    end 
end 