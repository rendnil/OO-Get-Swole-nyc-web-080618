require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#gyms
nysc = Gym.new("nysc")
health = Gym.new("health")
equinox = Gym.new("equinox")




#lifters
a = Lifter.new("a", 5)
b = Lifter.new("b", 3)
c = Lifter.new("c", 8)
d = Lifter.new("d", 8)

#memberships

m1 = Membership.new(100, a, nysc)
m2 = Membership.new(200, a, health)
m3 = Membership.new(300, a, equinox)
m4 = Membership.new(100, c, nysc)
m5 = Membership.new(300, c, equinox)
m6 = Membership.new(300, d, equinox)







binding.pry


0
