class ReportPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def new?
    create?
  end

  def create?
    true
  end
end
