
class Lifter

  @@all = [ ]


  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

  def self.all
    @@all
  end


  def memberships
    #user membership instances to get all
    Membership.all.select do |membership|
      #binding.pry
      membership.lifter == self
    end

  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end


  end


  def self.average_lift
    #populate array of lifts
    all_lifts = self.all.map do |lifter|
      lifter.lift_total
    end

    #sum all of the lifts
    lift_sum = 0

    all_lifts.each do |lift|
      lift_sum +=lift
    end

    #average = sum/n
    average = lift_sum/all_lifts.size

  end


  def sign_up(cost, gym)
    new_membership = Membership.new(self, gym, cost)


  end


  def total_cost
    total_cost = 0
    self.memberships.each do |membership|
      total_cost += membership.cost
    end

    total_cost


  end


end #end lifter class
