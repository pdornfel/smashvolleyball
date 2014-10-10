class AdminsController < ApplicationController

  before_filter :require_login

  def index
    @search = Player.search(params[:q])
    @players = @search.result
  end

end