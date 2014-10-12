class Player < ActiveRecord::Base

  has_and_belongs_to_many :positions, -> { uniq }

  before_save :populate_height_inches

  validates :first_name, 
            :last_name, 
            :dob, 
            :current_grade, 
            :height, 
            :dominant_hand, 
            :school, 
            :presence => true

  private

  def populate_height_inches
    split = height.split('.')
    self.height_inches = split.first.to_f * 12.0
    self.height_inches += split.last.to_f
  end

  def feet_to_inches
    'ft' * 12
  end
  def inches_to_feet
    'in' * 0.083333
  end

end