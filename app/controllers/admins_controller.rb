class AdminsController < ApplicationController

  before_filter :require_login

  def index
    @players = Player.all
  end

end