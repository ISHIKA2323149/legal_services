class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new 
    if user.role == 'user'
      can :create, ForumThread
      can :read, LawyerDetail
      can :read, ForumThread
      can :read, News  
      
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
      can :read, ForumPost
      can :read, ForumThread
      can :create, ForumThread
      can :create, News
      can :read, News
      can :read, LawyerDetail
      can :create, LawyerDetail

    end
  end
end
