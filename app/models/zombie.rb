class Zombie < ActiveRecord::Base
  attr_accessible :name, :weapons
  validates :name, presence: true

end

