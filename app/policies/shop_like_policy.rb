class ShopLikePolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
