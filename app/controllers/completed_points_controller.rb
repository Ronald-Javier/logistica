class CompletedPointsController < ApplicationController
  def index
    @points = Point.where(user_id: current_user)
    @completed_points = Point.where(user_id: current_user).pluck(:name, :id)
    
  end

  def create
    @points = CompletedPoint.new(completed_points_params)
    @points.point_status = true
    @points.save
    redirect_to root_path
  end
  private

  def completed_points_params
   params.require(:completed_point).permit(:point_id, :user_id, :point_status)
  end
end