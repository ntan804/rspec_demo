class Zombie < ActiveRecord::Base
  attr_accessible :name, :weapon, :tweets
  after_initialize :default_values
  
  validates :name, presence: true

  private
    def default_values
      self.weapon ||= ["Axe", "Sword"]
    end

end


