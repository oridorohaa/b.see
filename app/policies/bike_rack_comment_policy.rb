class BikeRackCommentPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end

  def destroy?
    # record.user == user
    true
  end
end
