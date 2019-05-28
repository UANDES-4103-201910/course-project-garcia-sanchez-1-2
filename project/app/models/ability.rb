# frozen_string_literal: true

class Ability
  include CanCan::Ability  
        # Define abilities for the passed in user here. For example:
        user ||= User.new(role: nil) # guest user (not logged in)
        
        if user.role == 3
            can :manage, [Dumpster, BlackList, Inappropriate]
            can :manage, User do |user|
                user.role == 1..2
            end
            can [:read, :destroy], [Post, Comment, PostImage, CommentImage]

        elsif user.role == 2
            can :manage, [Dumpster, BlackList, Inappropriate]
            can [:read, :destroy], [Post, Comment, PostImage, CommentImage]
            can :manage, User do |user|
                user.role == 1
            end
       
        elsif user.role == 1
            #Posts
            can :update, Post do |post|
                post.user == user
            end
            can :destroy, Post do |post|
                post.user == user
            end
            #post images
            can :update, PostImage do |post_image|
                post_image.user == user
            end
            can :destroy, PostImage do |post_image|
                post_image.user == user
            end
            #comments
            can :update, Comment do |comment|
                comment.user == user
            end
            can :destroy, Comment do |comment|
                comment.user == user
            end
            #comment images
            can :update, CommentImage do |comment_image|
                comment_image.user == user
            end
            can :destroy, CommentImage do |comment_image|
                comment_image.user == user
            end
            #votes
            can :destroy, Vote do |vote|
                vote.user == user
            end

            can [:update, :destroy] ,Comment, active: :true, user_id: user.id           
            can [:read, :create], [Post, Comment]
            can :crud, Vote
        else
            can :read, [Post, Comment, PostImage, CommentImage, Vote]   
        end
    
    
  end
end
