class CreatePlayers < ActiveRecord::Migration
  def change

    create_table :positions do |t|
      t.string :name
    end
    
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :current_grade
      t.string :height
      t.integer :weight
      t.integer :position_id
      t.string :dominant_hand
      t.string :school
    end
  end
end
