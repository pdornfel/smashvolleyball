class PlayersController < ApplicationController

  before_filter :require_login, only: :index

  def new
    @player = Player.new
    @heights = [5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 5.10, 5.11, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 6.7, 6.8, 6.9, 6.10, 6.11]
    @grades = ['9th', '10th', '11th', '12th']
  end

  def create
    player = Player.create(player_params)
    if player.save
      flash[:notice] = "Created New Player"
      redirect_to root_path
    else
      flash[:error] = player.errors.full_messages.to_s
      redirect_to root_path
    end
  end

  def index
    @search = Player.search(params[:q])
    @players = @search.result
  end


  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :dob, :current_grade, :height, :weight, :dominant_hand, :school)
  end

end