class CompletedPointsController < ApplicationController
  before_action :set_params, only: [:destroy]
  
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

  def destroy
    @point.destroy
    redirect_to root_path
  end

  private

  def completed_points_params
   params.require(:completed_point).permit(:point_id)
  end

  def set_params
    @point = CompletedPoint.find(params[:id])
  end

end
