class ChangePlayersHeightFromFloatToString < ActiveRecord::Migration
  def change
    change_column :players, :height, :string 
  end
end
