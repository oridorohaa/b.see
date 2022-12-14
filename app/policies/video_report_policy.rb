class VideoReportPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def destroy?
    user.admin?
  end
end
