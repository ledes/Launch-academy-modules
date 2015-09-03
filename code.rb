module PartyGoer
  attr_accessor :drink_count

  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count += 1
    if @drink_count >= 3
      return false
    else
      return true
    end
  end

  def sing
    "Yeiiiiiii!!!!!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
   base.extend(ClassMethods)
  end

  module ClassMethods
     def invited?
       true
     end
   end
end

class PersonalizedHavocError < StandardError
end
