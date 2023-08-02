class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.role == 'user'
      can :create, ForumThread
      can :read, LawyerDetail
      can :read, ForumThread  
      
    elsif user.role == 'lawyer'
      can :update, News do |news|
        news.user == user
      end

      can :destroy, News do |news|
        news.user == user
      end

      can :manage, News do |news|
        news.user == user
      end

      can :update, LawyerDetail do |lawyerdetail|
        lawyerdetail.user == user
      end

      can :create, ForumPost
      can :create, News
      can :read, News
      can :read, LawyerDetail

    end
  end
end
