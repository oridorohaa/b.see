class BikeRackCommentPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end
end
