class Player < ActiveRecord::Base

  has_and_belongs_to_many :positions, -> { uniq }

  validates :first_name, 
            :last_name, 
            :dob, 
            :current_grade, 
            :height, :weight, 
            :dominant_hand, 
            :school, 
            :presence => true

end