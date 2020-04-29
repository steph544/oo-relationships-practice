class Pledge
    attr_accessor :amount, :project, :user

    @@all = []

    def initialize(amount, project, user)
        @amount=amount
        @project=project
        @user=user
        @@all << self 
    end 

    def self.all
        @@all
    end 

end 