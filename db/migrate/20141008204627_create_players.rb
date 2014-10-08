class CreatePlayers < ActiveRecord::Migration
  def change

    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :current_grade
      t.float :height
      t.integer :weight
      t.string :dominant_hand
      t.string :school

      t.timestamps
    end

    create_table :positions do |t|
      t.string :name
      
      t.timestamps
    end

    create_table :players_positions do |t|
      t.belongs_to :player
      t.belongs_to :position
    end
  
  end
end
