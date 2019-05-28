# frozen_string_literal: true

class Ability
  include CanCan::Ability


      
  

        # Define abilities for the passed in user here. For example:
    
       user ||= User.new # guest user (not logged in)
       
        if user.role == 3
            can :manage, [Dumpster, BlackList, Inappropriate]
            can :manage, User, user_role: 1..2
            can [:read, :destroy], [Post, Comment, PostImage, CommentImage]

        elsif user.role == 2
            can :manage, [Dumpster, BlackList, Inappropriate]
            can [:read, :destroy], [Post, Comment, PostImage, CommentImage]
            can :manage, User, user_role: 1
        else
            can [:update, :destroy] ,Post, active: :true, user_id: user.id
            can [:update, :destroy] ,Comment, active: :true, user_id: user.id           
            can [:read, :create], [Post, Comment]
            can :crud, Vote
        end
    
    
  end
end
