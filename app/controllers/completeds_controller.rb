class CompletedsController < ApplicationController
  def index
    @completed_points = current_user.completed_points
    respond_to do |f|
      f.html
      f.json { render 'completed_points/index' }
      end
  end
end
