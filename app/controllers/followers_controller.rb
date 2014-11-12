class FollowersController < ApplicationController
  def create
    @followerlink = Follower.new(follower_id: session[:user_id],
                             leader_id: params[:leader_id])
    if @followerlink.save
      flash[:notice] = "Now Following"
    else
      flash[:alert] = "Unsuccesful Follow"
    end

    redirect_to "/users/#{ params[:leader_id] }"
  end

  def destroy
  end
end
