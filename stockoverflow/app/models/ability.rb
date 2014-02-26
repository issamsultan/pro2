class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 

    if user.role?(:admin)
      can :manage, :all
    elsif user.role?(:registered) 
      can :read, :all

      can :create, Photo
      can :vote_up, Photo
      can :edit, Photo do |photo|
        photo.try(:user_id) == user.id 
      end
      can :destroy, Photo do |photo|
        photo.try(:user_id) == user.id 
      end

      can :create, Answer
      can :edit, Answer do |answer|
        answer.try(:user_id) == user.id 
      end
      can :destroy, Answer do |answer|
        answer.try(:user_id) == user.id 
      end
      can :create, Album
      can :edit, Album do |album|
        album.try(:user_id) == user.id 
      end
      can :destroy, Album do |album|
        album.try(:user_id) == user.id 
      end

    else 
      can :read, Photo
      can :create, User
    end
  end




    # can :read, :all                   # allow everyone to read everything
    # if user && user.admin?
    #   can :access, :rails_admin       # only allow admin users to access Rails Admin
    #   can :dashboard                  # allow access to dashboard
    #   if user.role? :superadmin
    #     can :manage, :all             # allow superadmins to do anything
    #   elsif user.role? :registered
    #     can :manage, [User, Product]  # allow managers to do anything to products and users
    #   elsif user.role? :sales
    #     can :update, Product, :hidden => false  # allow sales to only update visible products
    #   end
    # end 
end
