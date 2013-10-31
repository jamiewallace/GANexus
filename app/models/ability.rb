class Ability
  include CanCan::Ability

  # def initialize(user)
  #   #create a default new user if none passed
  #   user ||= User.new

    # case user.role
    #   when "admin"
    #     can :manage, :all
    #   when "staff"
    #     can :manage, :all
    #   when "tutor"
    #     can :manage, :all
    #   when "student"
    #     can :manage, :all
    # end  
  
end  



    #   can :manage, :all

    # else
    #   #all non-admins
    #   can :read, :all
    #   can :create, User

    #   #author
    #   if user.role? "staff"
    #     can :create, User
    #     # can :update, Recipe do |recipe|
    #     #   recipe.user == user
    #     # end
    #     # can :destroy, Recipe do |recipe|
    #     #   recipe.user == user
    #     # end
    #     # can :manage, Quantity, :recipe => { :user_id => user.id }

    #   #moderator
    #   elsif user.role? "tutor"
        

    #   #chef
    #   elsif user.role? "student"
    #     # can :manage, Ingredient
    #   end

