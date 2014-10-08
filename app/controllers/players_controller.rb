class PlayersController < ApplicationController

  def new
    @player = Player.new
    @heights = [5.0, 5.5, 6.0, 6.5]
    @grades = ['9th', '10th', '11th', '12th']
  end

  def create
    player = Player.create(player_params)
    if player.save
      flash[:notice] = "Created New Player"
      redirect_to root_path
    else
      flash[:notice] = "Unable to create New Player"
      redirect_to root_path
    end
  end


  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :dob, :current_grade, :height, :weight, :dominant_hand, :school)
  end

end