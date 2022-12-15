class LaneCommentPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end

  def destroy?
    record.comment.user == user
  end
end
