class AddHeightInchesToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :height_inches, :float
  end
end
