class PlansController < ApplicationController


  def plan

  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(params.required(:plan).permit(:user_id, :provider_id, :term_length))

    @plan.user_id = current_user.id

    if @plan.save!
      redirect_to root_path
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
