class Point < ApplicationRecord
  validates_presence_of :name, on: :create, message: "no puede estar en blanco"
  validates_presence_of :name, on: :update, message: "no puede estar en blanco"
  validates :point_value, numericality: { only_integer: true }
  belongs_to :user
  has_many :completed_points
end
