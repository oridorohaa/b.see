class VideoCommentPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def create?
    true
  end
end
