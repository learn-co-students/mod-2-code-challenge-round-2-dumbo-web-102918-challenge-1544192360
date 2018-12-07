class AppearancesController < ApplicationController

 def index
   @appearances = Appearance.all
 end

 def show
   @appearance = Appearance.find(params[:id])
 end


 def new
   @appearance = Appearance.new
   @guests = Guest.all
   @episodes = Episode.all
 end

 def create
   @appearance = Appearance.create(appearance_params)
   redirect_to guest_path(@appearance.guest)
 end


private

def appearance_params
  params.require(:appearance).permit(:episode_id, :guest_id, :appearance_id)
end



end
