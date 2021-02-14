class FriendPolicy < ApplicationPolicy
    def index?
      true
    end
  
    def create?
      user.present?
    end
  
    def update?
      return true if user.present? && user == friend.user
    end
  
    def destroy?
      return true if user.present? && user == friend.user
    end
    
    def show?
      return true 
    end
    
    private
  
      def friend
        record
      end
  end