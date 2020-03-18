class CompletedPointsController < ApplicationController
  def index
    @points = Point.where(user_id: current_user)
    @completed_points = CompletedPoint.completed_today(current_user)
    @new_completed_point = CompletedPoint.new
  end
  
  def create
    @points = CompletedPoint.new(completed_points_params)
    @points.point_status = true
    @points.user = current_user
    @points.save
    redirect_to root_path
  end
  private

  def completed_points_params
   params.require(:completed_point).permit(:point_id)
  end
end
