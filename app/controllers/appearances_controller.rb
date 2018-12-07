class AppearancesController < ApplicationController
  # before_action :find_appearance, only []
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to @appearance.episode
  end

  private

  def find_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
