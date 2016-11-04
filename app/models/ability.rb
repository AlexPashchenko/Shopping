class Ability
  include CanCan::Ability

  def initialize(user)
    # user||=User.new


    if user.nil?
      can :read, Product
      can :read, Message
    else
      can :manage, Order, :user_id => user.id
      can :create, Message
      can :read, Product



    end

  end
end
