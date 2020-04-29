require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

u1=User.new("User1")
u2=User.new("User2")
u3=User.new("User3")
u4=User.new("User4")
u5=User.new("User5")
u6=User.new("User6")

pr1=Project.new(5000, u1)
pr2=Project.new(1000, u2)
pr3=Project.new(100000, u2)
pr4=Project.new(500, u4)
pr5=Project.new(2000000, u5)


p1=Pledge.new(25, pr1, u1)
p2=Pledge.new(10000, pr1, u3)
p3=Pledge.new(200, pr3, u2)
p4=Pledge.new(25, pr1, u2)
p5=Pledge.new(1000, pr4, u5)
p6=Pledge.new(25, pr5, u1)


binding.pry
0

