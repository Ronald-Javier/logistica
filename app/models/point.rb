class Point < ApplicationRecord
  belongs_to :user
  has_many :completed_points
end
