class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # should be needed
    # @activities = policy_scope(Activity)
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    group = Group.new
    user_group = UserGroup.new
    user_group.group = group
    user_group.user = current_user
    user_group.save
    @activity = Activity.new(activity_params)
    @activity.group = group
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :link, :start_time, :end_time)
  end

end
