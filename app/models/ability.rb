class Ability
  include CanCan::Ability

  def initialize(user)
    #create a default new user if none passed
    user ||= User.new

    if user.role? "admin"
        can :manage, :all
    elsif user.role? "staff"
        can :manage, :all
    elsif user.role? "tutor"
        can :read, :all
    elsif user.role? "student"
        can :read, :all
    else
        can :create, User
        can :read, :all  
    end
  end 
end  

