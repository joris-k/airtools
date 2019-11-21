class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    record.user == user || record.tool.user == user
  end

  def update?
    record.tool.user == user
  end
end

