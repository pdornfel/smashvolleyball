class Player < ActiveRecord::Base

  has_and_belongs_to_many :positions, -> { uniq }

end