class Gym

 @@all = [ ]

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end


  ####same logic as the lifters class
  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end


  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end

  end


  def lifter_names
    self.lifters.map do |lifter_obj|
      lifter_obj.name
    end

  end


  def lift_total_for_gym
    lift_total = 0
    self.lifters.each do |lifter_obj|
      lift_total += lifter_obj.lift_total
    end
    lift_total

  end




end #end gym class
