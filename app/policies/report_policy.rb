class ReportPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def new?
    create?
  end

  def create?
    true
  end
end
