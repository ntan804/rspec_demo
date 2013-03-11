class Zombie < ActiveRecord::Base
  attr_accessible :name, :weapon, :tweets, :craving, :vegetarian
  after_initialize :default_values
  
  validates :name, presence: true

  def hungry!
    self.craving = "brains"
  end

  private
    def default_values
      self.weapon ||= ["Axe", "Sword"]
    end

end


