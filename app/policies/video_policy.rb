class VideoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def maintenance?
    true
  end

  def repair?
    true
  end

  def styling?
    true
  end

  def other?
    true
  end

  def tagged?
    true
  end

  def recent?
    true
  end

  def most_liked?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    record.user == user || user.admin?
  end

  def destroy?
    record.user == user || user.admin?
  end
end
