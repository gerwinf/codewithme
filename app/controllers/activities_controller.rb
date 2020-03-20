class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # should be needed
    # @activities = policy_scope(Activity)
    @activities = Activity.all
  end

  def show; end
end
