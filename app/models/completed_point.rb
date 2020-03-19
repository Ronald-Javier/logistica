class CompletedPoint < ApplicationRecord
  belongs_to :point
  belongs_to :user

  def self.completed_today(user)
    where(user_id: user).where(created_at: Date.today.beginning_of_day..Date.today.end_of_day)
  end 

  def start
    created_at
  end

  def as_json(options = {})
    options[:except] = :created_at
    options[:methods] = :start
    super(options)
  end

  def point_name
    point.name
  end
end
